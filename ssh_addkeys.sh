#!/bin/bash

# Replace nodes.txt and password.txt with your own files, respectively

file=nodes.txt
password=password.txt

exec 3<$file
while read line <&3; do
	sshpass -f $password ssh -o StrictHostKeyChecking=no $line
done
