FROM mariadb:10.3

RUN apt-get update
RUN apt-get -y install locales-all
ENV MYSQL_ROOT_PASSWORD=password
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

#COPY mysqld_charset.cnf /etc/mysql/conf.d/mysqld_charset.cnf

# create databases
COPY ./sql/init.sql /docker-entrypoint-initdb.d/

# set timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo "Asia/Tokyo" > /etc/timezone