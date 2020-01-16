#!/bin/bash
git -v >/dev/null 2>&1
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

echo "Now uploading your File to Github\n"
git checkout -b $USER
git add .
git commit -m "AUTO-COMMIT: Adding file from Urlaubsplanner"
git push origin
echo "Finished \n\n"
