#!/bin/bash 
pwd_=`pwd`
export FLIP_HOME=$pwd_
echo "Installing JRE [i386] - - - > The libs used by flip are 32 bit libs... Ikr.."
sudo apt-get install default-jre:i386
export java_32="/usr/lib/jvm/java-1.11.0-openjdk-i386/bin/java"
echo "Installing Requirements - - > libcanberra-gtk-module (i386) , libcanberra-gtk3-module (i386)"
sudo apt-get install libcanberra-gtk-module:i386
sudo apt-get install libcanberra-gtk3-module:i386
echo "\nWould you like adding flip to path (Y/n) ?" 
read answer_add_path
if [ "$answer_add_path" != "${answer_add_path#[Yy]}" ];then
    touch flip
    
    chmod +x flip
    export PATH="$pwd_:$PATH"
    echo "Added To Path (Can be ran using -flip)"
else
    echo "Not Adding To Path"
fi

echo "=================================================================================================="
echo "=================================================================================================="
echo "Installion Finished !! ~~ Fix By Cactochan [Github : mastercodermerwin]"
echo "=================================================================================================="
echo "=================================================================================================="
