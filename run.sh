#!/bin/bash

gcc -v >/dev/null 2>&1
GCC=$?

if [[ ${GCC} -nw 0 ]]
  then echo -e "\e[31mYou need to install gcc first\e[0m\n"
fi

gcc -o Urlaubsplanner create.c -lm
./Urlaubsplanner
