#!/bin/bash


dpkg -l | grep linux-image

sudo apt purge linux-image-6.2.0-39-generic -y
sudo apt purge linux-image-6.5.0-21-generic -y
sudo apt purge linux-image-6.5.0-26-generic -y

sudo apt clean -y
sudo apt autoremove -y

dpkg -l | grep linux-image
