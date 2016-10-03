#!/bin/bash

file=nodes.txt
password=password.txt

while read line; do
	sshpass -f $password ssh-copy-id -o StrictHostKeyChecking=no $line
done < $file
