CREATE DATABASE stationery_orders_test;
USE stationery_orders_test;
CREATE DATABASE stationery_orders;
USE stationery_orders;
CREATE USER 'dbuser'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON kandigi.* TO 'dbuser'@'localhost';