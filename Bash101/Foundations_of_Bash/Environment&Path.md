## PATH

PATH = An environment variable which specifies the DIRECTORIES which the shell should look for executable files

### How to add own directories to PATH permanently 
```bash
echo "export PATH=$PATH:~/my_scripts" >> ~/.zshrc
# we are exporting the directory into the PATH variable

# then appending this line to the .zshrc file so that it becomes permanent everytime shell starts again

source ~/.zshrc # reloads the shell

# now we can execute the script from any directory
```

## Environment Variables
#### Containers that store valuable information
- They provide a way to store settings and configurations that scripts can access when needed 
- Begins with $

e.g $HOME = Home Directory
    $USER = Current user

### Standard Environment Variable
Gives us valuable info about the system, user and runtime.

They provide info on how to make our scripts more robust and adaptable

Some examples
- $LOGNAME = Username
- $PATH = Paths of executable scripts
- $SHELL = Shows current shell being used 
- $PWD = Current working directory