#!/usr/bin/zsh
VERSION=Anaconda3-2020.07-Linux-x86_64
# Install Anaconda for yourself
if [ ! -e $2/$VERSION.sh ]; then
  wget https://repo.anaconda.com/archive/$VERSION.sh -P $2

fi

sudo -u $1 expect -c "
set timeout 360
spawn /bin/sh $2/$VERSION.sh
expect \">>>\"
send \"\n\"
expect \":\"
send \"         \"
expect \">>>\"
send \"yes\n\"
expect \">>>\"
send \"/home/vagrant/libs/anaconda3\n\"
expect \">>>\"
send \"yes\n\"
"

if [ -e $2/$VERSION.sh ]; then
  rm -rf $2/$VERSION.sh
fi
