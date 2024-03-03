//
// tsh - A tiny shell program with job control
//
// Jack Sangdahl - @waffle87/jasa7131
//

using namespace std;

#include <ctype.h>
#include <errno.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <string>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

#include "globals.h"
#include "helper-routines.h"
#include "jobs.h"

//
// Needed global variable definitions
//

static char prompt[] = "tsh> ";
int verbose = 0;

//
// You need to implement the functions eval, builtin_cmd, do_bgfg,
// waitfg, sigchld_handler, sigstp_handler, sigint_handler
//
// The code below provides the "prototypes" for those functions
// so that earlier code can refer to them. You need to fill in the
// function bodies below.
//

void eval(char *cmdline);
int builtin_cmd(char **argv);
void do_bgfg(char **argv);
void waitfg(pid_t pid);

void sigchld_handler(int sig);
void sigtstp_handler(int sig);
void sigint_handler(int sig);

//
// Wrapper Functions for Error Handling
//
void Sigemptyset(sigset_t *set) {
  if (sigemptyset(set) < 0)
    unix_error("Sigemptyset error");
  return;
}

void Sigaddset(sigset_t *set, int signum) {
  if (sigaddset(set, signum) < 0)
    unix_error("Sigaddset error");
  return;
}

void Sigprocmask(int how, const sigset_t *set, sigset_t *oldset) {
  if (sigprocmask(how, set, oldset) < 0)
    unix_error("Sigprocmask error");
  return;
}

pid_t Fork(void) {
  pid_t pid;
  if ((pid = fork()) < 0)
    unix_error("Fork error");
  return pid;
}

void Setpgid(pid_t pid, pid_t pgid) {
  int rc;
  if ((rc = setpgid(pid, pgid)) < 0)
    unix_error("Setpgid error");
  return;
}

//
// main - The shell's main routine
//
int main(int argc, char **argv) {
  int emit_prompt = 1; // emit prompt (default)

  //
  // Redirect stderr to stdout (so that driver will get all output
  // on the pipe connected to stdout)
  //
  dup2(1, 2);

  /* Parse the command line */
  char c;
  while ((c = getopt(argc, argv, "hvp")) != EOF) {
    switch (c) {
    case 'h': // print help message
      usage();
      break;
    case 'v': // emit additional diagnostic info
      verbose = 1;
      break;
    case 'p':          // don't print a prompt
      emit_prompt = 0; // handy for automatic testing
      break;
    default:
      usage();
    }
  }

  //
  // Install the signal handlers
  //

  //
  // These are the ones you will need to implement
  //
  Signal(SIGINT, sigint_handler);   // ctrl-c
  Signal(SIGTSTP, sigtstp_handler); // ctrl-z
  Signal(SIGCHLD, sigchld_handler); // Terminated or stopped child

  //
  // This one provides a clean way to kill the shell
  //
  Signal(SIGQUIT, sigquit_handler);

  //
  // Initialize the job list
  //
  initjobs(jobs);

  //
  // Execute the shell's read/eval loop
  //
  for (;;) {
    //
    // Read command line
    //
    if (emit_prompt) {
      printf("%s", prompt);
      fflush(stdout);
    }

    char cmdline[MAXLINE];

    if ((fgets(cmdline, MAXLINE, stdin) == NULL) && ferror(stdin)) {
      app_error("fgets error");
    }
    //
    // End of file? (did user type ctrl-d?)
    //
    if (feof(stdin)) {
      fflush(stdout);
      exit(0);
    }

    //
    // Evaluate command line
    //
    eval(cmdline);
    fflush(stdout);
    fflush(stdout);
  }

  exit(0); // control never reaches here
}

/////////////////////////////////////////////////////////////////////////////
//
// eval - Evaluate the command line that the user has just typed in
//
// If the user has requested a built-in command (quit, jobs, bg or fg)
// then execute it immediately. Otherwise, fork a child process and
// run the job in the context of the child. If the job is running in
// the foreground, wait for it to terminate and then return.  Note:
// each child process must have a unique process group ID so that our
// background children don't receive SIGINT (SIGTSTP) from the kernel
// when we type ctrl-c (ctrl-z) at the keyboard.
//
void eval(char *cmdline) {
  /* Parse command line */
  //
  // The 'argv' vector is filled in by the parseline
  // routine below. It provides the arguments needed
  // for the execve() routine, which you'll need to
  // use below to launch a process.
  //
  char *argv[MAXARGS];

  // The 'bg' variable is TRUE if the job should run
  // in background mode or FALSE if it should run in FG
  bool bg = parseline(cmdline, argv);

  // process id
  pid_t pid;

  // mask to block/unblock signals
  sigset_t mask;

  if (!argv[0])
    // ignore empty lines
    return;

  // gnu.org/software/libc/manual/html_node/Signal-Sets.html
  // initialise empty signal set
  Sigemptyset(&mask);

  // add SIGCHLD to signal set
  Sigaddset(&mask, SIGCHLD);

  // handle built-in commands
  // builtin_cmd() returns 0 if not built in command
  if (!builtin_cmd(argv)) {
    // gnu.org/software/libc/manual/html_node/Process-Signal-Mask.html
    // block SIGCHLD signal
    Sigprocmask(SIG_BLOCK, &mask, 0);

    // gnu.org/software/libc/manual/html_node/Creating-a-Process.html
    // create child process (fork returns -1 on error)

    if (!(pid = Fork())) {
      // gnu.org/software/libc/manual/html_node/Process-Group-Functions.html
      // assign value to child process
      Setpgid(0, 0);

      // gnu.org/software/libc/manual/html_node/Executing-a-File.html
      // execute program or exit
      if (execvp(argv[0], argv)) { // use vp to search $PATH for executables
        printf("%s: Command not found\n", argv[0]);
        exit(0);
      }
    }
    if (!bg)
      // run foreground job
      addjob(jobs, pid, FG, cmdline);
    else
      // run background
      addjob(jobs, pid, BG, cmdline);
    // unblock for child
    Sigprocmask(SIG_UNBLOCK, &mask, 0);
    if (!bg)
      // wait for foreground job to complete
      waitfg(pid);
    else
      // otherwise print current background job info
      printf("[%d] (%d) %s", pid2jid(pid), pid, cmdline);
  }
  return;
}

/////////////////////////////////////////////////////////////////////////////
//
// builtin_cmd - If the user has typed a built-in command then execute
// it immediately. The command name would be in argv[0] and
// is a C string. We've cast this to a C++ string type to simplify
// string comparisons; however, the do_bgfg routine will need
// to use the argv array as well to look for a job number.
//
int builtin_cmd(char **argv) {
  string cmd(argv[0]);
  // exit on 'quit' command
  if (cmd == "quit")
    exit(0);

  // execute program in background or foreground on 'bg' or 'fg' command
  else if (cmd == "bg" || cmd == "fg") {
    do_bgfg(argv);
    return 1;
  }

  // print current jobs on 'jobs' command
  else if (cmd == "jobs") {
    listjobs(jobs);
    return 1;

    // ignore background process
  } else if (cmd == "&")
    return 1;

  else
    // not a built in command
    return 0;
}

/////////////////////////////////////////////////////////////////////////////
//
// do_bgfg - Execute the builtin bg and fg commands
//
void do_bgfg(char **argv) {
  pid_t pid;
  struct job_t *job = NULL;
  string cmd(argv[0]);
  /* Ignore command if no argument */
  if (argv[1] == NULL) {
    printf("%s command requires PID or %%jobid argument\n", argv[0]);
    return;
  }
  /* Parse the required PID or %JID arg */
  if (isdigit(argv[1][0])) {
    pid = atoi(argv[1]);
    if (!(job = getjobpid(jobs, pid))) {
      printf("(%d): no such process\n", pid);
      return;
    }
  } else if (argv[1][0] == '%') {
    int jid = atoi(&argv[1][1]);
    if (!(job = getjobjid(jobs, jid))) {
      printf("%s: no such job\n", argv[1]);
      return;
    }
  } else {
    printf("%s: argument must be a PID or %%jobid\n", argv[0]);
    return;
  }
  if (job) {
    pid = job->pid;
    if (job->state == ST) { // job is stopped
      if (cmd == "bg") {
        printf("[%d] (%d) %s", job->jid, job->pid, job->cmdline);
        job->state = BG;
        kill(-pid, SIGCONT); // resume process (group)
      }
      if (cmd == "fg") {
        job->state = FG;
        kill(-pid, SIGCONT); // resume process (group)
        waitfg(job->pid);    // and only process foreground job
      }
    }
    if (job->state == BG) {
      if (cmd == "fg") {
        job->state = FG; // "re-update" state to foreground if necessary
        waitfg(job->pid);
      }
    }
  }
  return;
}

/////////////////////////////////////////////////////////////////////////////
//
// waitfg - Block until process pid is no longer the foreground process
//
void waitfg(pid_t pid) {
  struct job_t *job = getjobpid(jobs, pid);
  while (job->state == FG)
    sleep(1); // nothing else can run while foreground process exists
  return;
}

/////////////////////////////////////////////////////////////////////////////
//
// Signal handlers
//

/////////////////////////////////////////////////////////////////////////////
//
// sigchld_handler - The kernel sends a SIGCHLD to the shell whenever
//     a child job terminates (becomes a zombie), or stops because it
//     received a SIGSTOP or SIGTSTP signal. The handler reaps all
//     available zombie children, but doesn't wait for any other
//     currently running children to terminate.
//
void sigchld_handler(int sig) {
  pid_t pid;
  int status;
  while ((pid = waitpid(-1, &status, WNOHANG | WUNTRACED)) > 0) {
    if (WIFEXITED(status)) // child process exited normally
      deletejob(jobs, pid);
    if (WIFSIGNALED(status)) { // child process was terminated via a signal
      printf("Job [%d] (%d) terminated by signal %d\n", pid2jid(pid), pid,
             WTERMSIG(status)); // WTERMSIG macro returns signal number
      deletejob(jobs, pid);
    }
    if (WIFSTOPPED(status)) { // child process was suspended
      getjobpid(jobs, pid)->state = ST;
      printf("Job [%d] (%d) stopped by signal %d\n", pid2jid(pid), pid,
             WSTOPSIG(status)); // WSTOPSIG macro returns signal number
    }
  }
  if (pid && errno != ECHILD) // make sure process exists and has children
    unix_error("sigchld_handler: waitpid error");
  return;
}

/////////////////////////////////////////////////////////////////////////////
//
// sigint_handler - The kernel sends a SIGINT to the shell whenver the
//    user types ctrl-c at the keyboard.  Catch it and send it along
//    to the foreground job.
//
void sigint_handler(int sig) {
  pid_t pid = fgpid(jobs);
  if (fgpid(jobs)) // check pid exists
    kill(-pid, SIGINT); // terminate process (group)
  return;
}

/////////////////////////////////////////////////////////////////////////////
//
// sigtstp_handler - The kernel sends a SIGTSTP to the shell whenever
//     the user types ctrl-z at the keyboard. Catch it and suspend the
//     foreground job by sending it a SIGTSTP.
//
void sigtstp_handler(int sig) {
  pid_t pid = fgpid(jobs);
  if (pid) // check pid exists
    kill(-pid, SIGTSTP); // stop the process (group), but don't terminate it
  return;
}

/*********************
 * End signal handlers
 *********************/
