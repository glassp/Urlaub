#!/bin/bash
cd -- "$(dirname "$BASH_SOURCE")"

git --version >/dev/null 2>&1
GIT=$?

gcc -v >/dev/null 2>&1
GCC=$?

if [[ ${GCC} -ne 0 ]]
  then echo -e "\e[31mYou need to install gcc first\e[0m\n"
fi

if [[ ${GIT} -ne 0 ]]
  then echo -e "\e[31mYou need to install git first\e[0m\n"
fi

USER=$(git config user.name)

gcc -o Urlaubsplanner create.c -lm
./Urlaubsplanner

echo -e "Finished \n\n"
