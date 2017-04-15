#!/bin/sh
#automated stress test

#####################################
#stress time-out - default 30m
stress_time=30m
#hdd workers - default 2
hdd=2
#cpu workers - default 0 (auto)
cpu=0
#ram memory workers - default 1
vm=1
#ram memory used (per worker)- default 1G
memory=1G
######################################



#root check
if [ "$(id -u)" != "0" ]; then
	echo "Need to be root!"
	exit 1
fi

#warning message
echo "\n\033[0;31m[WARNING] HIGH CPU/RAM/HDD LOAD"
echo "USE AT YOUR OWN RISK!"
echo "Don't leave unsupervised the computer under stress\033[0m\n"

#package check
dpkg -s stress-ng > /dev/null
if [ $? != 0 ]; then
	#if it's not installed then update and install it
	echo "Stress-ng missing, i will install it for you"
	sleep 5
	sudo apt-get update;
	sudo apt-get install stress-ng;
fi

#print defaults
echo "Defaults:"
echo "         Timeout = $stress_time "
echo "         CPU = $cpu "
echo "         HDD = $hdd "
echo "         RAM = $vm * $memory "
#ask if you want to change these values or not
echo -n "Do you want to change these values?(Y/n) "
read answer

#wrong answer flag
flag=1

#loop in case of wrong answer
while [ $flag != 0 ]
do
	flag=0
	case "$answer" in
			#Y or y or enter
			"Y"|"y"|"")
				#read all values
				echo -n "Enter timeout(s=seconds,m=minutes,h=hours,d=days, ex.10m): "
				read stress_time
				echo -n "Enter CPU workers (0=auto, n=disabled, d=default): "
				read cpu
				echo -n "Enter HDD workers (0=auto, n=disabled, d=default): "
				read hdd
				echo "RAM used = 'vm workers' * 'vm memory' "
				echo -n "Enter vm wrokers (n=disabled, d=default): "
				read vm
				echo "Please don't use more memory than system has!"
				echo -n "Enter vm memory (n=disabled, d=default)[m=mega,g=giga, max 1g]: "
				read memory
			;;
			#N or n
			"N"|"n")
				echo "Using Defaults!"
			;;
			#everything else
			*)
				echo -n "Please, enter 'y' or 'n'"
				read answer
				flag=1
			;;
	esac
done

#ask if you want to open a system monitor
echo "Open a system monitor if you want to see the state of system"
echo -n "Do you want i try to open 'gnome-system-monitor' for you?(Y/n): "
read answer

#wrong answer flag
flag=5

#loop in case of wrong answer
while [ $flag > 2 ]
do
	flag=0
	case "$answer" in
			#Y or y or enter
			"Y"|"y"|"")
				#check if package is installed
				dpkg -s gnome-system-monitor > /dev/null
				#if yes run it, else print an error message
				if [ $? == 0 ]; then
					sudo killall gnome-system-monitor
					sudo gnome-system-monitor &
					echo "Opening..."
					sleep 10
					flag=1;
				else
					echo "Gnome-system-monitor it's not installed"
			;;
			#everything else
			*)
				echo -n "Please, enter 'y' or 'n'"
				read answer
				flag=5
			;;
	esac
done


echo "Strarting test at $(date)"
echo "Wait $stress_time or press ^c (CTRL+C) to abort"

#stress test
sudo stress-ng --cpu $cpu --fork $cpu --crypt $cpu --vm $vm  --vm-bytes $memory --hdd $hdd --timeout $stress_time

#if sys monitor is open then close it after 10s
if [ $flag == 1 ]; then
	echo "sys monitor will be closed in 10s"
	#wait 10s
	sleep 10
	sudo killall gnome-system-monitor
fi
