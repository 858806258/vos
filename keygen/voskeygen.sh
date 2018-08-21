#!/usr/bin/env bash
var1=$(cat vosinfo |sed -n "1p")
var2=$(cat vosinfo |sed -n "2p")
var3=$(cat vosinfo |sed -n "3p")
var4=$(cat vosinfo |sed -n "4p")
var5=$(cat vosinfo |sed -n "5p")
java -jar vos30002140.jar $var1 $var2 $var3 $var4 $var5 10000 20000 zh_cn 6B756E736869 2017000000
