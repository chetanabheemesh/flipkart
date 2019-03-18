#!/bin/bash
echo "Demonstrating the while reading"
while read -r line  
do
	echo $line
sshpass -p "gamut" sudo scp target/flipkart-1.0-SNAPSHOT.jar gamut@$line:/home/gamut/deploy/
done <"ips.txt"
echo "deployement is done"
