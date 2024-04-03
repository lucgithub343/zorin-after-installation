#!/bin/bash

dpkg -l | grep linux-image
sudo apt install --yes nvidia-cuda-toolkit -y
sudo apt install --yes nvidia-driver-390 nvidia-dkms-390
