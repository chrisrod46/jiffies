#!/bin/bash

sudo -p "osc"
sudo dmesg -c
clear

printf "beginning script... \n\n"

sudo insmod hello.ko
cat /proc/hello
sudo rmmod hello

sudo insmod seconds.ko
cat /proc/seconds
sudo rmmod seconds

sudo insmod jiffies.ko
cat /proc/jiffies
sudo rmmod jiffies
sudo dmesg

printf "\n...end of script\n\n"