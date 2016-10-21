#!/bin/sh
#Uninstall meter from master.
sudo apt-get remove -y boundary-meter

#Salt Command to uninstall meter from on any numbers of Minions.
sudo salt '*' cmd.run "sudo apt-get remove -y boundary-meter"
