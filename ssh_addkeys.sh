#!/bin/bash

file=nodes.txt
password=password.txt

exec 3<$file
while read line <&3; do
	sshpass -f $password ssh-copy-id -o StrictHostKeyChecking=no $line
done
