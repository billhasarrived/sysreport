#! /usr/bin/bash

echo "Loading Report..."
sleep 1.5
echo
#Print distro Name and pass to figlet
echo -n $(cat /etc/*-release | grep -i "PRETTY_NAME=") | sed -e 's/.*=//' | tr -d '"' | figlet
sleep 0.2
echo "#####################################################################"
sleep 0.2
echo "#                          System Report                            #"
sleep 0.2
echo "#####################################################################"
sleep 0.2
echo "#                                                                   #"
sleep 0.2
#Print a message of the day using fortune
echo -n "# MOTD: "
echo -n $(fortune -s) | fold -sw 57  
echo
sleep 0.2
echo "#                                                                   #"
sleep 0.2
echo "#####################################################################"
sleep 0.2
echo "#####################################################################"
sleep 0.2
echo "#                           User Report                             #"
sleep 0.2
#!!! MANUALLY EDIT THIS SECTION
echo "#####################################################################"
sleep 0.2
echo "#                                                                   #"
sleep 0.2
echo "# Name: foo                                                         #"
sleep 0.2
echo "# Username: foo                                                     #"
sleep 0.2
echo "# Aliases: foo, bar                                                 #"
sleep 0.2
echo "# Favorite Movie: foo                                               #"
sleep 0.2
echo "# Favorite TV Show: foo                                             #"
sleep 0.2
echo "# Favourite Colors: foo, bar                                        #"
sleep 0.2
echo "# Interests: foo, bar                                               #"
sleep 0.2
echo "# Motto: Foobar                                                     #"
sleep 0.2
echo "#                                                                   #"
sleep 0.2
echo "#####################################################################"
sleep 0.2
echo "#####################################################################"
sleep 0.2
echo "#                         Hardware Report                           #"
sleep 0.2
#!!! MANUALLY EDIT THIS SECTION
echo "#####################################################################"
sleep 0.2
echo "#                                                                   #"
sleep 0.2
echo "# Model: foo                                                        #"
sleep 0.2
echo "# CPU: foo                                                          #"
sleep 0.2
echo "# GPU: foo                                                          #"
sleep 0.2
echo "# Memory: foo                                                       #"
sleep 0.2
echo "# Display: foo                                                      #"
sleep 0.2
echo "# Disk 0: foo                                                       #"
sleep 0.2
echo "#                                                                   #"
sleep 0.2
echo "#####################################################################"
sleep 0.2
echo "#####################################################################"
sleep 0.2
echo "#                         Software Report                           #"
sleep 0.2
echo "#####################################################################"
sleep 0.2
echo "#                                                                   #"
sleep 0.2
#print system uptime
echo -n "# Uptime: " 
echo -n $(uptime -p | cut -c 4-) 
echo
sleep 0.2
#Print distro name and architecture
echo -n "# Distro: "
echo -n $(cat /etc/*-release | grep -i "PRETTY_NAME=") | sed -e 's/.*=//' | tr -d '"'
echo -n " "
echo -n $(uname -m)
echo "                                         #"
sleep 0.2
#print kernel version
echo -n "# Kernel: "
echo -n $(uname -r)
echo "                                          #"
sleep 0.2
#---
#!!! UMCOMMENT/COMMENT DEPENDING ON PACKAGE MANAGER
#print number of installed pacman packages
echo -n "# Packages (Pacman): "
echo -n $(pacman -Q | wc -l)
echo "                                           #"
sleep 0.2
#Print number of intalled dpkg packages
#echo -n "# Packages (dpkg): "
#echo -n $(dpkg -l | wc -l)
#echo "                                        #"
#sleep 0.2
#Print number of installed rpm packages
#echo -n "# Packages (rpm): "
#echo -n $(rpm -qa | wc -l)
#echo "                                       #"
#sleep 0.2
#print number of installed ebuilds
#echo -n "# Packages (Portage): "
#echo -n $(equery list '*'| wc -l)
#echo "                                            #"
#sleep 0.2
#Print number of xbps packages
#echo -n "# Packages (xbps): "
#echo -n $(xbps-query -l | wc -l)
#echo "                                        #"
#sleep 0.2
#Print number of slackware packages
#echo -n "# Packages (slackware): "
#echo -n $(ls /var/log/packages | wc -l)
#echo "                                             #" 
#sleep 0.2
#echo -n "# Packages (zypper): "
#echo -n $(zypper search -i | sed '1,2d' | wc -l)
#echo "                                          #"
#sleep 0.2
#Print number of snap packages
#echo -n "# Packages (Snap): "
#echo -n $(snap list | sed 1d | wc -l)
#echo "                                        #"
#sleep 0.2
#print flatpak packages
echo -n "# Packages (Flatpak): "
echo -n $(flatpak list | wc -l)
echo "                                             #"
sleep 0.2
#---
#print display server
echo -n "# Windowing Server: "
echo -n $XDG_SESSION_TYPE
echo "                                             #"
sleep 0.2
#---
#!!! MANUALLY EDIT THIS SECTION DEPENDING ON ENVIRONMENT
echo "# Desktop Environment: foo                                          #"
sleep 0.2
echo "# Theme: foo                                                        #"
sleep 0.2
echo "# Icon Theme: foo                                                   #"
sleep 0.2
echo "# Terminal Emulator: foo                                            #"
sleep 0.2
echo "# Terminal Font: foo                                                #"
sleep 0.2
echo "# Shell: foo                                                        #"
sleep 0.2
echo "# Editor: foo                                                       #"
sleep 0.2
echo "#                                                                   #"
sleep 0.2
echo "#####################################################################"
sleep 0.2
echo
echo "End Report"
