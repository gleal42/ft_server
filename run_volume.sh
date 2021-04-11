# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run_volume.sh                                      :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gleal <gleal@student.42lisboa.com>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/10 03:03:50 by gleal             #+#    #+#              #
#    Updated: 2021/04/11 01:01:54 by gleal            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

docker build -t ft_server .
docker run --rm -it --name ft_server \
	-v ft_server_database:/var/lib/mysql/ \
	-v ft_server_wordpress:/var/www/html/wordpress/ \
	-p 80:80 -p 443:443 \
	ft_server
