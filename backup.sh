#!/bin/bash

before=$(date +%s)

ZIEL='/mnt'

rsync -a --delete-before /data/home/ $ZIEL/home --exclude=*/.snapshots

if [ -d '$ZIEL/etc' ];then
  rm -r $ZIEL/etc
fi

cp --parents /etc/ssh/sshd_config $ZIEL
cp --parents /etc/samba/smb.conf $ZIEL
cp --parents -R /etc/snapper/configs/ $ZIEL

after=$(date +%s)
date +"%Y.%m.%d_%T  dauer: $((after - $before))Sekunden" >> $ZIEL/Backup.txt
echo "Fertig!"
echo "Zeit: " $((after - $before)) "Sekunden"
exit