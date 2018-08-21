#!/usr/bin/env bash
echo "输入破解信息"
echo "ip"
read var_ip

echo "mac"
read var_mac

echo "rpmtime"
read var_rpmtime

echo "vostime"
read var_vostime

echo "jdktime"
read var_jdktime

#echo "${var_ip} ${var_mac} ${var_rpmtime} ${var_vostime} ${var_jdktime}"
keyinfo="${var_ip} ${var_mac} ${var_rpmtime} ${var_vostime} ${var_jdktime}"
echo "$keyinfo"
java -jar /root/vos/vos30002140.jar "$keyinfo" 10000 20000 zh_cn 6B756E736869 2017000000
