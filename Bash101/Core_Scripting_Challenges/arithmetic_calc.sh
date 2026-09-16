#!/bin/bash


# I created a calculator which allows user input of two numbers, to output multiple arithmetic calculations
# It also checks that if the second number inputted was 0, it would exit safely with an exit code

calculator() { # function called calculator
    echo "What is your first number?"
    read num1 # allows user input 
    echo "What is your second number?"
    read num2

    addition=$(( num1 + num2 ))
    substraction=$(( num1 - num2 ))
    multiplication=$(( num1 * num2 ))
    division=$(( num1 / num2 ))

        if [ $num2 -eq 0 ]; then
            echo "ERROR: Division by 0 is not allowed"
            exit 1
        fi # Without breaking code, if the second number inputted is 0, it will exit with this error code

    echo "Results: $num1 + $num2 = $addition, $num1 - $num2 = $substraction, $num1 * $num2 = $multiplication, $num1 / $num2 = $division" 
}

calculator
