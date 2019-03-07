#! /vendor/bin/sh
#For wifi enable failed issue need to check persist/rfs's selinux contexts
checkrfs=$(ls -lZ /persist/rfs | grep rfs_file)
if [ "$checkrfs" == "" ]; then
    stop
    setprop rfs.contexts.wrong true
fi
exit 0
