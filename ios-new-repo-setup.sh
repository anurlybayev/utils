#!/bin/bash

PWD=`pwd`
cd $PWD

YELLOW="\e[0;33m"
DEFAULT="\e[0m"
gitignore='.gitignore'

if [ -f $gitignore ]; then
	printf "$YELLOW$gitignore$DEFAULT already exists\n"
else
	printf "Creating $YELLOW$gitignore$DEFAULT\n"
	printf "curl -o .gitignore https://www.gitignore.io/api/osx,swift,objective-c\n"
	`curl -o .gitignore https://www.gitignore.io/api/osx,swift,objective-c`
fi

BASENAME=`basename $PWD`
printf "rvm --ruby-version use 2.1.1@$BASENAME --create\n"
`rvm --ruby-version use 2.1.1@$BASENAME --create`