#!/bin/bash
database="test"
dbuser="root"
dbpasswd="abcdef"
options=""
 
#定义排除表的数组
ignoreTableArray=(wk_ap_info wk_ap_pwd_history)
 
#实现排除函数
function mysql_ignoreTable(){
        for table in  ${ignoreTableArray[@]}
        do
                s="--ignore-table="${database}.${table}" "
                options=${options}${s}
        done
        #${options}拼接排除的表
#       echo ${options}
        mysqldump -u${dbuser} -p${dbpasswd} ${database} ${options} >${database}.sql
}
 
mysql_ignoreTable




#排除多余表格
#mysqldump --single-transaction --ignore-table=db_name.t1 --ignore-table=db_name.t2 -uroot -pxxxxxxx db_name > db_name.sql