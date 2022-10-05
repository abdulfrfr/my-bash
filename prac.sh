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
networth=5

if [ "$networth" -eq 5 ]
then
  echo "i'm rich"

else
  echo "SAPA nice one"
fi

#conditionals; if else statements

if [ "$networth" -ge 10 ]
then
  echo "i'm broke mehnnn"
elif [ "$networth" -le 5 ]
then
  echo "i've got to work harder"
else
  echo "SAPA nice one"
fi


# functions

function first_function(){
echo "my first function"
}

#calling the function; just write out the name of the functiona and that's it
first_function

#function with parameters

function sec_function(){
echo "$1 $2"
}

sec_function "Hello " "World!"

function cond_function(){
if [ "$1" == "Hello" ]
then
  echo "$1"
elif [ "$2" == "World" ]
then
  echo "$2"
else
  read -p "what do you want to say?" answer
  echo "$answer"

fi
}

cond_function "Hello" "World"

# make a directory and a file inside of it, echo a text inside of the file
#and cat it out, after that delete file and directory

mkdir newball
cd newball
touch newball.txt
echo "new ball file" >> newball.txt
cat newball.txt

rm newball.txt
cd ..
rmdir newball
