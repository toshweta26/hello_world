#!/bin/bash

# Arguments

# User Inputs


# Get the last four changes#
echo "Which environment has your current code that needs to be moved?"
#read envorigin
echo "In which environment do you want to move your code to?"
#read envdestination
echo
echo "Ok. So, the code needs to be moved from $envorigin to $envdestination environment."


echo "Choose 1 to move a single change from $envorigin environment."
echo "Choose 2 to move multiple changes from $envorigin environment."
echo "Choose 3 to exit"
echo "Please enter your choice:"
read choice

case $choice in
"1") echo "You chose to move a single change from $envorigin to $envdestination environment."
;;
"2") echo "You chose to move multiple changes from $envorigin to $envdestination environment."
;;
"3") echo "You chose to exit."
;;
*) echo "Incorrect choice! Please enter your choice again."
;;
esac



# Go to the git repository after initializing it
# Or create the shell script at the same location as git repository

# Look for the committed change(s) that needs to be migrated

