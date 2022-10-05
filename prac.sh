#!/bin/bash

#variables and making use of variables

MYNAME="abdul"

echo "My name is $MYNAME"

#reading user input with a prompt and assigning it to a variable

read -p "Where are you from? " LOCATION

echo "I am from $LOCATION"

#for loop; this loops though strings and divide them with space bar

CHARACTER="a b c d e"

# and to use the CHARACTER we dont use the qutation sign because we want to
#loop though the variable and not use it value but we will use the dollar
#sign
for CHAR in $CHARACTER
do
#and now here we will use the dollar sign on CHAR and the
#quotaion sign because its a variable
#taking the value of the iteration and we want to use the value and not the
#variable
 echo "this is letter $CHAR"
done

#while loop; while loop uses a conditional statement and you can see below

NUM=1

#here you use the keyword while and open a block bracket and write in your 
#condition and there must be a single space after the first opening block
#brackets and a space before the closing block bracket

while [ "$NUM" -lt 10 ]
do
 echo "$NUM"
#the syntax below is used to increment numeric values and it is done has
#seen below
 ((NUM++))
done


#until loop; this is a loop that takes a condition tool and execute only
#the program or codes when the condition is true

VAL=2

until [ "$VAL" -eq 10 ]
do
 echo "$VAL"
 ((VAL++))
done

#conditionals; if statements
