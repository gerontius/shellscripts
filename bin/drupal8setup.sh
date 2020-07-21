#!/bin/bash
set -e


if [ $(id -u) != 0 ]; then
  printf "**************************************\n"
  printf "* Error: You must run this with sudo or root*\n"
  printf "**************************************\n"
  exit 1
fi

echo "Enter a directory name from the following options:"
echo "======================="
echo "`ls`"
read SITEDIR

echo "Enter a user to give ownership of the files to:"
read OWNER

cd $SITEDIR
chown -R $OWNER:www-data .
find . -type d -exec chmod u=rwx,g=rx,o= '{}' \;
find . -type f -exec chmod u=rw,g=r,o= '{}' \;
cd sites/default
if [ ! -d files ]; then
	mkdir files
fi
chown -R www-data:www-data files/
find . -type d -name files -exec chmod ug=rwx,o= '{}' \;
for x in files; do
  find ${x} -type d -exec chmod ug=rwx,o= '{}' \;
  find ${x} -type f -exec chmod ug=rw,o= '{}' \;
done

