#!/usr/bin/sh
#exp_internal 1

expect -c "
  set timeout 600
  spawn ~/Anaconda3-2020.02-Linux-x86_64.sh

  send \"\r\"
  send \" \"
  send \" \"
  send \" \"
  send \" \"
  send \" \"
  expect \"\[no\] >>>\"
  send \"no\r\"
"
# send "yes\r"
# expect -exact "\[/home/vagrant/anaconda\] >>>"
# send "/home/vagrant/libs/anaconda\r"
# expect -exact "\[no\] >>>"
# send "no\r"
# expect -exact "VSCode? \[yes\|no\]"
# send "no\r"
