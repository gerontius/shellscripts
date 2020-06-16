#!/bin/bash

echo 'The current path is:' $PATH

MYUSERNAME='username'
MYPASSWORD='password123'
SCRIPTSTART=`date`
PRESENTWORKINGDIR=`pwd`

echo "welcome to the machine $MYUSERNAME"
echo "Here is your new password $MYPASSWORD"
echo "This is the date: $SCRIPTSTART"
echo "YOU ARE HERE: $PRESENTWORKINGDIR"


