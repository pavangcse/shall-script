#!/bin/bash

# Function to reverse a number
reverse_number() {
    num=$1
    rev=0
    while [ $num -gt 0 ]
    do
        rem=$((num % 10))
        rev=$((rev * 10 + rem))
        num=$((num / 10))
    done
    echo $rev
}

# Read two numbers from the user
echo "Enter the first number:"
read num1
echo "Enter the second number:"
read num2

# Reverse the numbers and print them
echo "Reversed first number: $(reverse_number $num1)"
echo "Reversed second number: $(reverse_number $num2)"

