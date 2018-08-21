#!/bin/bash
#解析得到myku.kmdns.net动态域名IP
getip=`dig +short ssh.1nth.com`

#得到原来allow文件中的IP
oldip=`cat /etc/hosts.allow|grep sshd |awk -F':' '{print $2}'|tail -n1`

if [ $getip != $oldip ]
    then
    sed -i "s/$oldip/$getip/g" /etc/hosts.allow
else
   exit
fi
#获取ip地址
#wget -qO- -t1 -T2 ipv4.icanhazip.com