# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gleal <gleal@student.42lisboa.com>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/05 23:24:47 by gleal             #+#    #+#              #
#    Updated: 2021/04/11 00:07:05 by gleal            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN apt-get install -y nginx

RUN apt-get install openssl

RUN apt-get -y install mariadb-server

RUN apt-get -y install php7.3
RUN apt-get -y install php7.3-fpm
RUN apt-get -y install php7.3-curl
RUN apt-get -y install php7.3-dom
RUN apt-get -y install php7.3-exif
RUN apt-get -y install php7.3-fileinfo
RUN apt-get -y install php7.3-gd
RUN apt-get -y install php7.3-iconv
RUN apt-get -y install php7.3-imagick
RUN apt-get -y install php7.3-intl
RUN apt-get -y install php7.3-json
RUN apt-get -y install php7.3-mbstring
RUN apt-get -y install php7.3-mysqli
RUN apt-get -y install php7.3-soap
RUN apt-get -y install php7.3-simplexml
RUN apt-get -y install php7.3-xml
RUN apt-get -y install php7.3-xmlreader
RUN apt-get -y install php7.3-zip

RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.1.0/phpMyAdmin-5.1.0-english.tar.gz && \
	tar -xvzf phpMyAdmin-5.1.0-english.tar.gz && rm -rf phpMyAdmin-5.1.0-english.tar.gz && \
	mv phpMyAdmin-5.1.0-english var/www/html/php_my_admin

RUN wget https://wordpress.org/latest.tar.gz && \
	tar -xvzf latest.tar.gz && \
	mv wordpress var/www/html && \
	rm -rf latest.tar.gz

COPY /srcs/nginx/server_index_on.conf /tmp/server_index_on.conf
COPY /srcs/nginx/server_index_off.conf /tmp/server_index_off.conf

RUN rm -rf /etc/nginx/sites-enabled/default
RUN rm -f var/www/html/index.nginx-debian.html
RUN rm -f var/www/html/index.html

COPY srcs/nginx/homepage var/www/html/homepage
COPY srcs/php_info var/www/html/php_info
COPY srcs/php_testing_database var/www/html/php_testing_database
COPY srcs/php_my_admin/config.inc.php var/www/html/php_my_admin
COPY srcs/wordpress/wp-config.php var/www/html/wordpress/wp-config.php

EXPOSE 80 443

COPY srcs/*.sh .
CMD bash start.sh
