::echo This does not work yet
@echo off
gcc -version >nul 2>&1 (
	REM gcc is in Path
) || (
	echo gcc is not recognices as a command.
	echo Try to install MinGW or add gcc to your PATH if already installed.
	GOTO omega
)

gcc -o Urlaubsplanner.o create.c
Urlaubsplanner.o

move *.md /docs
move /docs/README.md .

omega:
echo FINISHED

