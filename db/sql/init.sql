CREATE DATABASE IF NOT EXISTS stationery_orders;
CREATE DATABASE IF NOT EXISTS stationery_orders_test;
CREATE USER 'dbuser'@'%' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON stationery_orders.* TO 'dbuser'@'%';
GRANT ALL PRIVILEGES ON stationery_orders_test.* TO 'dbuser'@'%';
FLUSH PRIVILEGES;