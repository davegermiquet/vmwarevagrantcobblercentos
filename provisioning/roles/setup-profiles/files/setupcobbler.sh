#!/bin/bash
cobbler distro list | grep CentOS
if [ $? -ne 0 ] ; then
cobbler import --arch=x86_64 --path=/mnt/iso --name=CentOS7
fi
