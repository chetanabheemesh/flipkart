#!/bin/bash
echo "Demonstrating the while reading"
while read -r line  
do
	echo $line
sudo sshpass -p "gamut" scp target/flipkart-1.0-SNAPSHOT.jar gamut@$line:/home/gamut/deploy/
done <"ips.txt"
echo "deployement is done"
