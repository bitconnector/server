# Benutzer und Gruppen

## Show

groups of user

`sudo groups USER`

groups and members

`sudo getent group`

`sudo more /etc/group`


## Modify

### groups

add

`sudo groupadd GROUP`

delete

`sudo groupdel GROUP`

### users

adduser

`sudo useradd -d /data/home/USER -G GROUP1,GROUP2 -s /usr/bin/rssh USER`

add to group

`sudo gpasswd -a USER GROUP`

remove from group

`sudo gpasswd -d USER GROUP`


change shell

`sudo chsh USER`

`sudo nano /etc/passwd`



