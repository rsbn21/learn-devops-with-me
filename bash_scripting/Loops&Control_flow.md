## While Loops
- Allows you to repeat code for as long as the condition is true
- helpful to automate iterative tasks


```bash
#!/bin/bash
while condition
do 
    # Code
done
```


```bash
#!/bin/bash

fruits=("apple" "banana" "orange")
index=0

while $index -lt ${#fruits[@]}
do
    echo "Fruit: ${fruits[$index]}"
    ((index++))
done
```



## For Loops
- Allows you to iterate over a sequence or range of values
- variable in loop takes on each value in sequence
- code block is executed for each iteration
- arrays, lists of value -> helpful to automate repetitive tasks and data

```bash
#!/bin/bash
for variable in sequence
do
    # Code Block
done
```


```bash
#!/bin/bash

fruits=("apple" "banana" "orange")

for fruit in ${fruits[@]} 
do
    echo "Fruit: $fruit"
done
```


## Break and Continue
- Break = exits the inner loop that its placed in
- Continue = skips the rest of the current iteration and oves onto the next iteration

```bash

count=1

while [ $count -le 5 ]
do

    if [ $count -eq 3 ]
    then
        ((count++))
        continue
    fi
    echo "Count: $count"
    ((count++))

done


```