#!/bin/bash


sudo apt remove --purge --yes linux-headers-6.5.0-14-generic linux-image-6.5.0-14-generic linux-modules-6.5.0-14-generic linux-modules-extra-6.5.0-14-generic
sudo apt install --reinstall --yes linux-headers-6.2.0-39-generic linux-image-6.2.0-39-generic linux-modules-6.2.0-39-generic linux-modules-extra-6.2.0-39-generic
sudo apt-mark hold linux-headers-6.2.0-39-generic linux-image-6.2.0-39-generic linux-modules-6.2.0-39-generic linux-modules-extra-6.2.0-39-generic

sudo apt-get clean
