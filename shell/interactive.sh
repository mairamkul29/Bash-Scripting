#!/bin/bash

echo "Hello there! My name is $0"
read -p "What is your name: " name

if [ $name = "Abdul"]; then
name="Boss"
fi

echo "Nice to meet you $name"
echo "I am helpful girl, I make people smile for living"
read -p "What do you do?: " q1
echo "Wow! I hear some good things about $q1"

echo "It's been pleasure meeting you $name"
echo "Bye!"


