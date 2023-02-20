#!/bin/bash
echo Copying files and getting them ready.....
sudo rm -r /usr/share/auradroid/
sudo cp -r files /usr/share/auradroid/
sudo cp -r bin/* /usr/bin/
sudo chmod +x /usr/share/auradroid/scripts/*
sudo chmod +x /usr/bin/auradroid-config
sudo chmod +x /usr/bin/auradroid-start
sudo cp -r applications/* /usr/share/applications/
echo Decompressing AuraDroid Container
cd /usr/share/auradroid
sudo unsquashfs auradroid.img.squashfs
cd /usr/share/auradroid/squashfs-root/
sudo mv auradroid.img /usr/share/auradroid
sudo rm -r /usr/share/auradroid/squashfs-root/
