#!/bin/zsh

##
#            Name:  addTwoNumbers.zsh
#          Author:  Cham Nou - chamnou08@gmail.com
#     Description:  
#         Created:  August 16, 2022
#   Last Modified:  
#         Version:  1.0
##

# intake first number to add
results=$( /usr/bin/osascript -e "display dialog \"Please enter the first number you want to add\" with title \"Adding two numbers\" default answer \"\" buttons {\"Cancel\",\"OK\"} default button {\"OK\"}" )
theButton=$( echo "$results" | /usr/bin/awk -F "button returned:|," '{print $2}' )
firstNumber=$( echo "$results" | /usr/bin/awk -F "text returned:" '{print $2}' )
    # halts everything if cancel button is clicked on
    if [ "$theButton" != "OK" ]; then
        echo "Operation cancelled by clicking the cancel button."
        exit 0
    fi

# intake second number to add
results=$( /usr/bin/osascript -e "display dialog \"Please enter the second number you want to add\" with title \"Adding two numbers\" default answer \"\" buttons {\"Cancel\",\"OK\"} default button {\"OK\"}" )
theButton=$( echo "$results" | /usr/bin/awk -F "button returned:|," '{print $2}' )
secondNumber=$( echo "$results" | /usr/bin/awk -F "text returned:" '{print $2}' )
    # halts everything if cancel button is clicked on
    if [ "$theButton" != "OK" ]; then
        echo "Operation cancelled by clicking the cancel button."
        exit 0
    fi

sum=$(($firstNumber + $secondNumber))

/usr/bin/osascript -e "display dialog \"Adding your first and second numbers = "$sum"\" with title \"Adding two numbers\" buttons {\"Done!\"} default button {\"Done!\"}"