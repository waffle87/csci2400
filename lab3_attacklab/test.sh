#!/bin/bash
TXT=solutions/$1target.l$2.txt
BIN=target17/$1target.l$2.bin
printf "building binary w/ hex2raw...\n"
cat $TXT
printf "\n"
./target17/hex2raw < $TXT > $BIN
read -p "execute target? (y/n) " -n 1 -r
if [[ $REPLY =~ y$ ]]; then
  printf "\n\n"
  ./target17/$1target < $BIN
else
  printf "\n"
fi
