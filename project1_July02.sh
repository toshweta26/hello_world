#!/bin/bash

# Functions

# Single change function
singlechange()
{
read -rsp $'\n\nYou are about to see the list of changes to choose. Press any key to continue or Ctrl+C to exit.\n' -n1 key
clear;
git log --oneline

# Asking the user to enter on of the sha# mentioned above
echo $'\n\nPlease choose one of the change ids from above and enter it here: '
read singlechange
clear;
echo $'\n\nDetails of this change are as follows:\n'
git show --oneline $singlechange
echo $'\n\n'
echo "Are you sure you want to move the change $singlechange from $envorigin to $envdestination environment."
read -rsp $' Press any key to continue or Ctrl+C to exit.' -n1 key
#createbranch


echo "You have successfully continued."
}

# Multiple change function
multiplechange()
{
echo "this is the multiple change block."

}

# Create new branch function
# Ensure if we really need this function
createbranch()
{
git checkout -b newchange
}

# Main function

# Arguments

# User Inputs


# Get the last four changes#
echo "Which environment has your current code that needs to be moved?"
read envorigin
echo "In which environment do you want to move your code to?"
read envdestination
clear;
echo "Alright. So, the code needs to be moved from $envorigin to $envdestination environment."
echo
echo "Choose 1 to move a single change from $envorigin environment."
echo "Choose 2 to move multiple changes from $envorigin environment."
echo "Choose 3 to exit"
echo "Please enter your choice:"
read choice

case $choice in
#case 1 in
"1") 
echo $'\n\n'
echo "You chose to move a single change from $envorigin to $envdestination environment."
singlechange
;;
"2") 
echo $'\n\n'
echo "You chose to move multiple changes from $envorigin to $envdestination environment."
multiplechange
;;
"3") echo "You chose to exit."
;;
*) echo "Invalid choice! Please enter your choice again."
;;
esac



# Go to the git repository after initializing it
# Or create the shell script at the same location as git repository

# Look for the committed change(s) that needs to be migrated


#5