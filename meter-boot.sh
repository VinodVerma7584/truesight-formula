#!/bin/sh

#saltstack apply command to Install Meter on Master.
sudo wget https://meter.truesight.bmc.com/setup_meter
sudo mv setup_meter setup_meter.sh
sudo chmod +x setup_meter.sh
sudo mv setup_meter.sh /root
sudo salt-call --local state.apply

#Saltstack apply command to Install Meter on any numbers of Minions.
sudo salt '*' state.apply
