#!/bin/sh

echo $PALAVRA
if [ -z $PALAVRA ];then
	/usr/games/fortune | /usr/games/cowsay
else
  /usr/games/cowsay $PALAVRA
fi

