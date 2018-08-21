#!/bin/bash
#中文-UTF8
setenforce 0
sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config 
mkdir -p /etc/yum.repos.d/backup/
mv -f /etc/yum.repos.d/* /etc/yum.repos.d/backup/  >/dev/null 2>&1
wget -qO /etc/yum.repos.d/Centos-Base.repo http://oss.1nth.com/repo/Centos-5/Myki.repo
yum clean all
yum makecache
yum install -y gcc gcc-c++ php lynx bison tftp-server httpd make ncurses-devel libtermcap-devel sendmail sendmail-cf caching-nameserver sox newt-devel libxml2-devel libtiff-devel audiofile-devel gtk2-devel subversion git  crontabs cronie cronie-anacron
yum install -y perl-DBI mysql-devel mysql-server  php-mysql php-pear php-mbstring --skip-broken
yum install -y mysql-connector-odbc* java-1.6.0-openjdk
service iptables stop

chkconfig --level 2345 mysqld on 
service mysqld stop
service mysqld stop

chkconfig --level 2345 httpd on 
service httpd stop
service httpd stop

pear install db-1.7.14

cd /root/sqlite* 
./configure && make && make install

cd /root/iksemel-* 
./configure && make && make install

cd /root/asterisk* 
#删除要不然报错
rm -rf menuselect.makeopts
./configure && make && make install && make samples && make config 
# make menuselect

ln -s /usr/local/lib/*.so /usr/lib
ln -s /usr/local/lib/*.so.4 /usr/lib
ln -s /usr/local/lib/*.so.1 /usr/lib
ldconfig

tar zxvf /root/astrec_db.tar -C /
tar zxvf /root/rec.tar -C /
tar zxvf /root/conf.tar -C /
chmod 644 /etc/my.cnf
chmod 644 /etc/my.cnf
chkconfig --level 2345 mysqld on
chkconfig --level 2345 httpd on
chkconfig --level 2345 asterisk on
#sed -i "s/Listen 80/Listen 101/" /etc/httpd/conf/httpd.conf
#sed -i "s/Listen 80/Listen 101/" /etc/httpd/conf/httpd.conf
echo "安装完成-installed"