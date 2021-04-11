# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    start.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gleal <gleal@student.42lisboa.com>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/07 00:26:43 by gleal             #+#    #+#              #
#    Updated: 2021/04/11 00:03:42 by gleal            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

chown -R www-data /var/www/*
chmod -R 755 /var/www/*

cp /tmp/server_index_on.conf /etc/nginx/sites-available/server.conf
ln -s /etc/nginx/sites-available/server.conf /etc/nginx/sites-enabled/server.conf

mkdir /etc/nginx/ssl
openssl req -newkey rsa:4096 \
			-x509 \
			-sha256 \
			-days 3650 \
			-nodes \
			-out /etc/nginx/ssl/localhost.crt \
			-keyout /etc/nginx/ssl/localhost.key \
			-subj "/C=PT/ST=Lisbon/L=Lisbon/O=42 Lisboa/OU=gleal/CN=www.localhost.com"

service mysql start
mysql -u root --skip-password << HERE
CREATE DATABASE database_wp;
GRANT ALL PRIVILEGES ON database_wp.* TO 'root'@'localhost';
update mysql.user set plugin = 'mysql_native_password' where user='root';
FLUSH PRIVILEGES;
SHOW DATABASES;
CREATE TABLE database_wp.todo_list (item_id INT AUTO_INCREMENT, content VARCHAR(255), PRIMARY KEY(item_id));
INSERT INTO  database_wp.todo_list (content) VALUES ("My first important item");
INSERT INTO  database_wp.todo_list (content) VALUES ("My second important item");
INSERT INTO  database_wp.todo_list (content) VALUES ("My third important item");
INSERT INTO  database_wp.todo_list (content) VALUES ("My fourth important item");
SELECT * FROM database_wp.todo_list;
HERE
service mysql status
service php7.3-fpm start
service php7.3-fpm status

service nginx start
nginx -t
service nginx status

bash
