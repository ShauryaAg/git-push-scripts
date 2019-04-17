# git-push-scripts
CMD Scripts to help automate the pushing of existing repos on to a remote repository

# gitInitial.bat
It should be used to push a repo for the first time to remote

# gitSubsequent.bat
It should be used to push an existing repository on to a remote

### Usage
Clone the repo on to your local machine and copy the desired file into your working directory and open the file by double clicking on it OR by opening it using command line.
Note: It always adds all the files in the directory

###### By Double-Clicking:
You will prompted to input the remote URL of the repo where the files are to be pushed.

###### Using Command Line:
You can either enter the remote URL after adding a space after the File Name, like ```gitInitial.bat <remote URL>``` OR you will prompted to enter the remote URL afterwards.


For ```gitSubsequent.bat``` file you can also specify the commit message after remote URL, like ```gitSubsequent.bat <remote URL> "commit Message"```.
If you do not specify any commit message, the deafult is "Files Updated"
and the commit message in ```gitInitial.bat``` is "Initial Commit" (which can not be changed)

# Note
These scripts only work if you have git installed and it is added to the Path


