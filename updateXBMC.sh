#!/bin/bash

# REQUIREMENTS:
# - wget ( get it via 'brew install wget' ) // if you don't have brew give it a shoot.

# This script is Mac specific!
# It installes the latest nightly build of XBMC.
# Have fun. Take a look at https://github.com/Velrok/scripts .

working_dir="/tmp/updateXBMC"
mount_dir="$working_dir/mount"

if [ ! -d $working_dir ] 
then
	mkdir $working_dir
fi


cd $working_dir
echo "downloading the latest version"
dmg_file="$working_dir/latest.dmg"
wget -O "$dmg_file http://mirrors.xbmc.org/nightlies/osx/latest.dmg"


# mount the image and copy the contents
if [ ! -d $mount_dir ] 
then
	mkdir $mount_dir
fi

echo "mounting image"
open $dmg_file

sleep 5

echo "copying new version"
cp -r /Volumes/XBMC/XBMC.app /Volumes/XBMC/Applications

echo "unmounting image"
umount /Volumes/XBMC

echo "cleaning up tmp directory"
rm -rf $working_dir