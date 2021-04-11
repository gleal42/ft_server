# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    run_container.sh                                   :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gleal <gleal@student.42lisboa.com>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/07 15:39:10 by gleal             #+#    #+#              #
#    Updated: 2021/04/10 03:08:29 by gleal            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

docker build -t ft_server .
docker run --rm -it --name ft_server -v volume_baby -p 80:80 -p 443:443 ft_server
