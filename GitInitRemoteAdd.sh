#!/bin/bash

set -e

projecthome=/Users/ed/projects

cd $projecthome

# Get user directory name
echo Give a directory name:

read directory

# Make the directory and cd into it
if [ ! -d $directory ]
then
     mkdir $directory
else
     echo  "Sorry that directory exists"
fi

cd $directory
echo Give a project title to your README file:

read projecttitle

echo "$projecttitle" >> README.md
git init
git add README.md
git commit -m "first commit"

echo add the url of the git repo you wish to add, i.e https://github...

read gitRepo

git remote add origin $gitRepo
git push -u origin master

cd ${projecthome}/{$directory}
bash
