#!/bin/bash
echo "No don't run me i am retarded. just see what the script does you will figure out what to do. i suck at bash scripting and i have boards. bye."
echo "Is your docker set up and installed? [Y or N]"

read setupreply

if [$setupreply=="n"] || [$setupreply=="N"]
then
	pip3 install docker-compose
	pip3 install docker
	systemctl start docker
else
	echo "Do you want me to set up the container? [Y or N]"
	read $runreply
	if [$runreply=="Y"] || [$runreply =="y"]
	then
		sudo docker-compose up
	else
		echo "do:"
		echo "sudo docker-compose up --> to turn the thing on"
		echo "sudo docker-compose up -d --> to turn the thing on in the background" 
		echo "sudo docker-compose down --> to turn the thing off from the background"
	fi
fi	
