#!/bin/bash
git --version >/dev/null 2>&1
GIT=$?

if [[ ${GIT} -ne 0 ]]
  then echo -e "\e[31mYou need to install git first\e[0m\n"
fi

USER=$(git config user.name)

gcc -o Urlaubsplanner create.c -lm
./Urlaubsplanner

echo "Now uploading your File to Github\n"
git checkout -b $USER >/dev/null
git add . >/dev/null
git commit -m "AUTO-COMMIT: Adding file from Urlaubsplanner" >/dev/null
git push origin $USER >/dev/null
echo -e "Finished \n\n"
