#!/bin/bash

sshpass -p "gamut" scp target/flipkart-1.0-SNAPSHOT.jar gamut@172.17.0.2:/home/gamut/deploy/
