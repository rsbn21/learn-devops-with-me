## Functions
- Allow us to turn code into modules
- Improve script organisation
- Allow reusabilty

Functions are like mini programs -> set of instructions which can be called whenever needed

```bash
function_name() {
    # Code Block
}
```

```bash
hello_world() {
    echo "Hello World"
}

hello_world # when this is ran, it would echo "hello world"
```


## Parameters
Data which is passed in a function (the arguments given)

```bash
print_args() {
    echo "Number of arguments: $#" # $# is special parameter to show number of parameters
    echo "Script name: $0" # $0 is special parameter for script name
    echo "First argument: $1" # $1 is parameter for the first parameter
    echo "All arguments: $@" # $@ is special parameter to show all paramters
}

print_args "Apple" 
print_args "Banana"
```

## User Inputs
This is when a function allows the user to interact with CLI and give its input

```bash
greet() {
    echo "What is your name?"
    read name # read command will ask cli to prompt you to read your input
    echo "Hello $name"
}

greet

```



## Handling Bad Data

```bash
validate_age(){
    local age = $1

    if [[ ! $age =~ ^[0-9]+$    ]]; then
        echo "Invalid age. Please provide numeric value."
        return 1
    fi

    if [[ $age < 18  ]]; then
        echo "Invalid age. You must be at least 18 years old" 
        return 1
    fi

    echo "Congrats, you are eligible"
    return 0
}

echo "What is your age?"
read user_age

validate_age "user_age"
exit_code=$? # $? stores exit code

if (( exit_code != 0 )); then
    echo "Input validation failed"
else 
    echo "Input validation passed"


```