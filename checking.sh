#!/bin/bash


clear

read -p "Which service should we check? " service

echo 

sleep 1

echo

if systemctl is-active --quiet $service; then 

	echo "$service already running"
else
	systemctl start $service 

	echo " starting $service "
	echo
	sleep 1
	echo 
	echo " $service service is now running "

fi

echo 

systemctl status httpd | head -3 | grep -Ei "Loaded|Active|Inactive" | awk {'print $1, $2'}



