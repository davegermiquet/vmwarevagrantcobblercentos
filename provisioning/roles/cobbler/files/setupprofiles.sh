#!/bin/bash
cobbler profile list | grep CentOS
if [ $? -ne 0 ] ; then
cobbler profile edit --name=CentOS7-x86_64 --kickstart=/root/CentOS7.ks
fi
