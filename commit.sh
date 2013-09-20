#!/bin/sh

git commit -a
git push origin master
sleep 10
curl 'http://kablammo.io/strategies/523c979a421aa95b5500e27f/pull?'
sleep 10
curl 'http://kablammo.io/battles' -H 'Content-Type: application/x-www-form-urlencoded' --data 'player1=523c979a421aa95b5500e27f&player2=523b8747421aa9028a000001&player3=&player4=' --compressed -i | grep Location
