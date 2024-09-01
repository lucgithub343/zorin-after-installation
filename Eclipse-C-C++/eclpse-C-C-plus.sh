#!/bin/bash


## Eclipse C and C++
sudo dpkg -i --force-overwrite eclipse-cpp-2023-12.deb
sudo rm /.eclipseproduct
sudo apt --fix-broken install -y
