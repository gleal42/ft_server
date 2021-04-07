# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gleal <gleal@student.42lisboa.com>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/05 23:24:47 by gleal             #+#    #+#              #
#    Updated: 2021/04/07 21:54:08 by gleal            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y nginx
RUN apt-get install openssl
RUN apt-get -y install mariadb-server

COPY /srcs/nginx/server.conf /etc/nginx/sites-available/server.conf
RUN ln -s /etc/nginx/sites-available/server.conf /etc/nginx/sites-enabled/server.conf
RUN rm -rf /etc/nginx/sites-enabled/default
RUN rm var/www/html/index.nginx-debian.html

COPY srcs/nginx/homepage var/www/html/homepage
EXPOSE 80 443

COPY srcs/*.sh .
CMD bash start.sh
