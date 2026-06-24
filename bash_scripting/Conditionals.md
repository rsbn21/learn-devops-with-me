## if statements

introduces decision making logic into script 
- control flow of code
- creates dynamic behaviour into scripts

```bash
if condition # If condition is true
then 
    # Code block will be executed
fi
```
#### Conditions are formed using comparison operators 
eq = equals
ne = not equal to
lt = less than
gt = greater than
le = less than or equal to 
ge = greater than or equal to

#### logical operators
&& = "AND"
|| = "OR"

#### String operators
== = equal to 
!= = not equal to 


## else statements
We use else to add a condition if the first condition is false

```bash
if condition
then 
    # Code block executed
else
    # If the if statement is not true, this code block would be executed
fi
```

### elif = when we have multiple conditions

```bash
if condition 
then 
    # Code block executed
elif condition
then 
    # if 1st condition is not met, but meets this one
else 
    # Execute if neither conditions are met
fi
```

#### Nested if statements
- Allows evaluation of multiple conditions and code blocks based on results.
- Allows complex decision making to be included

```bash
age=19
grade=75

if [ $age -gt 18]
then
    echo "You are eligible"
    if [ $grade -ge 80 ]
    then "You are eligible based on grade"
    else 
        echo "Sorry not eligible based on grade"
    fi
else 
    echo "Sorry not eligible"
fi
```