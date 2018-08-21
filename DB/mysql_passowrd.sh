#修改mysql的root密码

#方法1
mysql -u root
SET PASSWORD FOR 'root'@'localhost' = PASSWORD('newpass');

#方法2
#没有设置root密码时候
mysqladmin -u root password "newpass"
#设置过root密码的时候用一下命令
mysqladmin -u root password oldpass "newpass"

#方法3
mysql -u root
use mysql;
UPDATE user SET Password = PASSWORD('newpass') WHERE user = 'root';
FLUSH PRIVILEGES;


#当root密码丢失的时候
mysqld_safe --skip-grant-tables&
　　mysql -u root mysql
　　mysql> UPDATE user SET password=PASSWORD("new password") WHERE user='root';
　　mysql> FLUSH PRIVILEGES;
