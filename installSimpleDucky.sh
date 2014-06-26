#!/bin/bash
# Created by blakdayz
# Installation script for Simple-Ducky
echo "Checking to see if Simple-Ducky is intalled.."
if [ -e "/usr/share/simple-ducky" ]
	then
	   echo "Found a previous installation, uninstalling..."
	   sudo rm -R /usr/share/simple-ducky
	   echo "Done."
fi
echo "Testing for git..."
if [ -e "/usr/share/git-core" ] && [ -e "/usr/share/gitweb" ]
	then
	   echo "Found git-core and gitweb. Installing simple-ducky..."		
	   sudo git clone git://github.com/skysploit/simple-ducky.git /usr/share/simple-ducky
	   sudo ln -sf /usr/share/simple-ducky/simple-ducky.sh /usr/bin/simple-ducky
	   if [ -e "/usr/share/simple-ducky/simple-ducky.sh" ]
		then
		   echo "Installed."
		else
		   echo "Error in installation."
	   fi
	else
		echo "Git not found. Try \'sudo apt-get install git\'"
fi

