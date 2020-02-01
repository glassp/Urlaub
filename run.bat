::echo This does not work yet
@echo off
git -version >nul 2>&1 (
	REM gcc is in Path
) || (
	echo gcc is not recognices as a command.
	echo Try to install MinGW or add gcc to your PATH if already installed.
	GOTO omega
)

run-local.bat

echo Now uploading your File to Github.
git checkout -b $USER >nul
git add . >nul
git commit -m "AUTO-COMMIT: Adding file from Urlaubsplanner" >nul
git push origin $USER >nul
echo Finished .

omega: