DELETE FROM mysql.user;
CREATE USER 'root'@'%' IDENTIFIED BY '';
GRANT ALL ON *.* TO 'root'@'%' IDENTIFIED BY '';
FLUSH PRIVILEGES;
DROP DATABASE IF EXISTS test;
