#!/bin/bash

echo "sudo apt-get clean"
echo "sudo apt-get update"
echo "sudo apt-get -y upgrade"
echo "sudo apt-get -y dist-upgrade"
echo "sudo apt-get -y autoremove"
echo "Will be ran if you proceed."

echo -n "We need to update your system, to proceed okay (Y\n)? "

read INPUT

if [ $INPUT = "yes" -o $INPUT = "y" ]; then
	echo "Okay, right away!"
	sudo apt-get clean
	sudo apt-get update
	sudo apt-get -y upgrade
	sudo apt-get -y dist-upgrade
	sudo apt-get -y autoremove
	echo "Dependencies that will be installed if you proceed."
	echo "qt5-default build-essential git cmake python-pyside libqt4-dev libphonon-dev python2.7-dev libxml2-dev libxslt1-dev libqtwebkit-dev python-pip python-dev vagrant"
	echo -n "Now we need to install some of the dependencies, would you like to proceed (Y\n)? "
	
	read INPUT
	
	if [ $INPUT = "yes" -o $INPUT = "y" ]; then
	echo "Yes, sir!"
	sudo apt-get install -y qt5-default build-essential git cmake python-pyside libqt4-dev libphonon-dev python2.7-dev libxml2-dev libxslt1-dev libqtwebkit-dev python-pip python-dev vagrant
		echo "This may day a bit, unless your on a supercomputer."
		echo -n "Okay we are going to set up the required components (Y\n)? "
		
		read INPUT
	
		if [ $INPUT = "yes" -o $INPUT = "y" ]; then
		echo "Where on it!"
		sudo pip install --upgrade pip
		sudo python -m easy_install --upgrade pyOpenSSL
		sudo pip install --upgrade virtualenv
		sudo pip2.7 install wheel
		sudo pip install PySide
		sudo pip install requests
		sudo pip install psutil
		
		echo ""
		echo "Okay I think your all set, if you have any problems let Tate know on discord."
		echo "Give the wallet a try, run: python wallet.py "
		echo ""
		echo "If your feeling nice today, please send me a tip: "
		echo "VERayVu7RhuKqHFb62SvV8ESwPaDi3CDBi2SsHCKt48GTLtuXtLYJddGRZVW7h8dmNGz7nmzxNgamSsBje2sF9WnRVHg612CJYZ"
		
		echo -n "Would you like me to start the wallet for you (Y\n)? "
	
		read INPUT
			if [ $INPUT = "yes" -o $INPUT = "y" ]; then
				echo "Starting it up."
				python wallet.py
			else
				echo "Exiting!"
				exit 1
			fi
		else
			echo "Exiting!"
			exit 1
		fi	

	else
		echo "Exiting!"
		exit 1
	fi	
	
else
	echo "Exiting!"
	exit 1
fi