## Error Handling
Foreseeing when things can go wrong and taking appropriate measures 

- basic handling is using IF statements

```bash
num1=10
num2=0
result=(( $num1 / $num2 ))

echo "The result is $result"

# DIVIDING BY 0 WILL ALWAYS BREAK CODE AND GIVE AN ERROR

# WE NEED TO HANDLE THIS WITH AN IF STATEMENT

num1=10
num2=0

if [ $num2 -eq 0 ]; then
    echo "ERROR: Division by 0 is not allowed"
    exit 1
fi

result=(( $num1 / $num2 ))

echo "The result is $result"

# NOW WITH THE IF STATEMENT, WITHOUT CRASHING THE CODE, IT WILL EXIT THE CODE WITH THE ABOVE ERROR MESSAGE

```

## Exit codes
Non 0 exit codes = ERROR

Can check previous commands exit command using $?


#### Set -e
Adding this Set command before the scripts starts will make it so that whenever a non 0 exit code is returned, it will stop the script immediately at that error

#### Set -u
Adding this Set commmand before the scripts stops the scripts whenever an uninitialised variable is used

#### Set -x
Walks you through the commands in the script when executing the script

#### Set -eux
Combining all the set commands

#### More Set Commands
- set -o nounset = returns when uninitialised variable appears
- set -o errexit = exits when non 0 exit code is returned
- set -o pipefail = returns when pipe fails