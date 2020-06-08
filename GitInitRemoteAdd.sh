#!/bin/bash

set -e

# Get user directory name
echo Give a directory name:

read directory

# Make the directory and cd into it

mkdir $directory
cd $directory
echo "# shellscripts" >> README.md
git init
git add README.md
git commit -m "first commit"

echo add the url of the git repo you wish to add, i.e https://github...

read gitRepo

git remote add origin $gitRepo
git push -u origin master
