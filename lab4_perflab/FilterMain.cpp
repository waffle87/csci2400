#include "Filter.h"
#include "cs1300bmp.h"
#include <fstream>
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

using namespace std;

#include "rdtsc.h"

inline int Filter::get(int r, int c) { return data[r * dim + c]; }

inline int Filter::getDivisor() { return divisor; }

//
// Forward declare the functions
//
Filter *readFilter(string filename);
double applyFilter(Filter *filter, cs1300bmp *input, cs1300bmp *output);

int main(int argc, char **argv) {

  if (argc < 2) {
    fprintf(stderr, "Usage: %s filter inputfile1 inputfile2 .... \n", argv[0]);
  }

  //
  // Convert to C++ strings to simplify manipulation
  //
  string filtername = argv[1];

  //
  // remove any ".filter" in the filtername
  //
  string filterOutputName = filtername;
  string::size_type loc = filterOutputName.find(".filter");
  if (loc != string::npos) {
    //
    // Remove the ".filter" name, which should occur on all the provided filters
    //
    filterOutputName = filtername.substr(0, loc);
  }

  Filter *filter = readFilter(filtername);

  double sum = 0.0;
  int samples = 0;

  for (int inNum = 2; inNum < argc; inNum++) {
    string inputFilename = argv[inNum];
    string outputFilename =
        "filtered-" + filterOutputName + "-" + inputFilename;
    struct cs1300bmp *input = new struct cs1300bmp;
    struct cs1300bmp *output = new struct cs1300bmp;
    int ok = cs1300bmp_readfile((char *)inputFilename.c_str(), input);

    if (ok) {
      double sample = applyFilter(filter, input, output);
      sum += sample;
      samples++;
      cs1300bmp_writefile((char *)outputFilename.c_str(), output);
    }
    delete input;
    delete output;
  }
  fprintf(stdout, "Average cycles per sample is %f\n", sum / samples);
}

class Filter *readFilter(string filename) {
  ifstream input(filename.c_str());

  if (!input.bad()) {
    int size = 0;
    input >> size;
    Filter *filter = new Filter(size);
    int div;
    input >> div;
    filter->setDivisor(div);
    for (int i = 0; i < size; i++) {
      for (int j = 0; j < size; j++) {
        int value;
        input >> value;
        filter->set(i, j, value);
      }
    }
    return filter;
  } else {
    cerr << "Bad input in readFilter:" << filename << endl;
    exit(-1);
  }
}

double applyFilter(class Filter *filter, cs1300bmp *input, cs1300bmp *output) {

  long long cycStart, cycStop;

  cycStart = rdtscll();

  int filter_divisor = filter->getDivisor();

  int input_width = input->width;
  int input_height = input->height;

  int tmp1, tmp2; //accumulators
  int col, j; //loop runners

  //precalculate filtet.get() function calls
  short filter_get[9], filter_idx = 0;
  for (int i = 0; i < 3; i++)
    for (int j = 0; j < 3; j++) {
      filter_get[filter_idx] = filter->get(i, j);
      filter_idx++;
    }

  output->width = input_width;
  output->height = input_height;
  #pragma omp parallel for
  for (int plane = 0; plane < 3; plane++) {
    for (int row = 1; row < input_height - 1; row++) {
      for (col = 1; col < input_width - 2; col += 2) {
        tmp1 = 0, tmp2 = 0, filter_idx = 0;
        for (int i = 0; i < 3 ; i++) {
          for (j = 0; j < 3 - 2; j += 3) {
            tmp1 += (input->color[plane][row + i - 1][col + j - 1] * filter_get[filter_idx    ])
                  + (input->color[plane][row + i - 1][col + j    ] * filter_get[filter_idx + 1])
                  + (input->color[plane][row + i - 1][col + j + 1] * filter_get[filter_idx + 2]);
            tmp2 += (input->color[plane][row + i - 1][col + j    ] * filter_get[filter_idx    ])
                  + (input->color[plane][row + i - 1][col + j + 1] * filter_get[filter_idx + 1])
                  + (input->color[plane][row + i - 1][col + j + 2] * filter_get[filter_idx + 2]);
            filter_idx += 3;
          }
          for (; j < 3; j++) {
            tmp1 += (input->color[plane][row + i - 1][col + j - 1] * filter_get[filter_idx]);
            tmp2 += (input->color[plane][row + i - 1][col + j - 1] * filter_get[filter_idx]);
            filter_idx++;
          }
        }
        if (tmp1 < 0) {
          output->color[plane][row][col] = 0;
        } else if (tmp1 > filter_divisor * 255) {
          output->color[plane][row][col] = 255;
        } else {
          output->color[plane][row][col] = tmp1 / filter_divisor;
        }
        if (tmp2 < 0) {
          output->color[plane][row][col + 1] = 0;
        } else if (tmp2 > filter_divisor * 255) {
          output->color[plane][row][col + 1] = 255;
        } else {
          output->color[plane][row][col + 1] = tmp2 / filter_divisor;
        }
      }
      for (; col < input_width - 1; col++) {
        tmp1 = 0, filter_idx = 0;
        for (int i = 0; i < 3 ; i++) {
          for (j = 0; j < 3 - 2; j += 3) {
            tmp1 += (input->color[plane][row + i - 1][col + j - 1] * filter_get[filter_idx    ])
                  + (input->color[plane][row + i - 1][col + j    ] * filter_get[filter_idx + 1])
                  + (input->color[plane][row + i - 1][col + j + 1] * filter_get[filter_idx + 2]);
            filter_idx += 3;
          }
          for (; j < 3; j++) {
            tmp1 += (input->color[plane][row + i - 1][col + j - 1] * filter_get[filter_idx]);
            filter_idx++;
          }
        }
        if (tmp1 < 0) {
          output->color[plane][row][col] = 0;
        } else if (tmp1 > filter_divisor * 255) {
          output->color[plane][row][col] = 255;
        } else {
          output->color[plane][row][col] = tmp1 / filter_divisor;
        }
      }
    }
  }
  cycStop = rdtscll();
  double diff = cycStop - cycStart;
  double diffPerPixel = diff / (output->width * output->height);
  fprintf(stderr, "Took %f cycles to process, or %f cycles per pixel\n", diff,
          diff / (output->width * output->height));
  return diffPerPixel;
}
