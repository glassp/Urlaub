# Urlaub  
  
This Repo is for my personal vacation planning.
Feel free to fork, clone, etc.

## Prerequisite
You need the following tools in your PATH
 - git
 - gcc (for Linux/Unix/Mac)
 - TBA (for Windows)
## Installing
Just clone it
```bash
$ git clone https://<your-username>/<forked-repo>.git
```

## Usage

Just run the `run` script.  
For Linux, UNIX use `run.sh`  
For MAC use `run.command`  
For Windows use `run.bat`  
  
The Program will now ask you some Questions (in German).
For none German-speakers it will ask the following:
  - Name of the Vacation
  - Confirmation that the name is correct (y for Yes)
  - Duration of the Vacation
  - Confirmation that the duration is correct (y for yes)
  
Then it will generate a .md file with the given Name
Finally it will upload it to Github using you Username as branch name

If you don't want the file to be uploaded use the `run-local` script instead
