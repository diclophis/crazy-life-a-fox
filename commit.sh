#!/bin/sh

git add -A
git commit -m "`date`"
git push origin master
sleep 10
curl 'http://kablammo.io/strategies/523c979a421aa95b5500e27f/pull?'
sleep 10
#curl 'http://kablammo.io/battles' -H 'Content-Type: application/x-www-form-urlencoded' --data 'player1=523c979a421aa95b5500e27f&player2=523cb400421aa92dc204c342&player3=523b8af7421aa90b76000001&player4=523cbc59421aa92dc20aca5f' --compressed -i | grep Location
curl 'http://kablammo.io/battles' -H 'Content-Type: application/x-www-form-urlencoded' --data 'player1=523c979a421aa95b5500e27f&player2=523cb400421aa92dc204c342&player3=&player4=523cbc59421aa92dc20aca5f' --compressed -i | grep Location
