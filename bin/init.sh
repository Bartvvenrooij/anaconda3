#!/usr/bin/env bash

case "$OSTYPE" in
  msys*)    PREFIX="winpty";
esac

if [ -z "$1" ]
then
    read -p "Enter password: " -s password
else
    password=$1
fi

echo "Setting new password..."

$PREFIX docker exec -it anaconda python /root/.jupyter/init.py $password

echo "Restarting container anaconda..."

$PREFIX docker restart anaconda

echo "Finished!"
