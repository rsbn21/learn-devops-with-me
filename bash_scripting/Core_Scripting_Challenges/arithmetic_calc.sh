#!/bin/bash

calculator() {
    echo "What is your first number?"
    read num1 
    echo "What is your second number?"
    read num2

    addition=$(( num1 + num2 ))
    substraction=$(( num1 - num2 ))
    multiplication=$(( num1 * num2 ))
    division=$(( num1 / num2 ))

        if [ $num2 -eq 0 ]; then
            echo "ERROR: Division by 0 is not allowed"
            exit 1
        fi 

    echo "Results: $num1 + $num2 = $addition, $num1 - $num2 = $substraction, $num1 * $num2 = $multiplication, $num1 / $num2 = $division" 
}

calculator
