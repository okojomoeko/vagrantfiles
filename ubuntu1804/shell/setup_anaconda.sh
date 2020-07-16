#!/usr/bin/zsh
# Install Anaconda for yourself
wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -P $1

expect -c "
set timeout 360
spawn /bin/sh $1/Anaconda3-2020.02-Linux-x86_64.sh
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
