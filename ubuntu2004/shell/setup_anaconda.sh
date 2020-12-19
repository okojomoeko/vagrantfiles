#!/usr/bin/zsh
# Install Anaconda for yourself
if [ ! -e $2/Anaconda3-2020.07-Linux-x86_64.sh ]; then
  wget https://repo.anaconda.com/archive/Anaconda3-2020.07-Linux-x86_64.sh -P $2

fi

sudo -u $1 expect -c "
set timeout 360
spawn /bin/sh $2/Anaconda3-2020.07-Linux-x86_64.sh
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
