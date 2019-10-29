#!/bin/sh

echo $PALAVRA
if [ -z $PALAVRA ];then
	PALAVRA="Senai 2019"
fi

/usr/games/cowsay $PALAVRA

