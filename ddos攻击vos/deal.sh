1.加固NTP服务
echo "disable monitor" >> /etc/ntp.conf
service ntpd restart

2.关闭NTP服务
service ntpd stop
chkconfig ntpd off

3.加固Chargen服务
我们建议您直接关闭掉chargen服务。编辑配置文件”/etc/inetd.conf”，用#号注释掉chargen服务，然后重启inetd服务。
-A INPUT -p udp -m udp --sport 123 -j DROP
-A INPUT -p udp -m udp --dport 123 -j DROP
-A OUTPUT -p udp -m udp --sport 123 -j DROP
-A OUTPUT -p udp -m udp --dport 123 -j DROP