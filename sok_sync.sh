#!/bin/bash

help()
{
echo "Usage: ./pwnsync -s <source> -d <destination>"
echo
echo "Options:"               "Fonction"
echo
echo "  -s ,<source>          Specifies the source directory "
echo "  -d ,<destination>     Specifies the path to the destination directory to synchronize"
echo "  -D ,<deploy>          Synchronizes local files to the server without deleting them on the server"
echo "  -A ,<daemon>          Active daemon mode"
echo "  -h ,<help>            Displays this help message"
echo
echo
echo "***UPLOAD***"
echo
echo "pwnsync -s <source> -d [USER@]HOST:<destination>"
echo
echo "***Download***"
echo
echo "pwnsync -s [USER@]HOST:<source> -d [destination]"
echo
}                                                           

while getopts "s:d:hDA" options
do
case $options in
s)
source=$OPTARG
;;
d)
destination=$OPTARG
;;
D)
deploy=true
;;
A)
deamon=true
;;
h)
help
;;
\?)
echo "invalid option : -$OPTARG" >&2
exit 1
;;
:)
echo "Missing option : -$OPTARG " >&2
exit 1
;;
esac
done

if [[ z- $source || z- $destination ]]
then
help
exit 1
fi

if ("$deploy" == "true")
then
echo "[INFO] Connecting to  server : $destination "
echo "[INFO] Syncing files....$source to $destination  "
rsync -avz "$source" "$destination" --no-delete
else
rsync -avz "$source" "$destination"
fi

if (daemon == "true")

