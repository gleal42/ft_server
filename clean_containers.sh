# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    clean_containers.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gleal <gleal@student.42lisboa.com>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/07 20:31:30 by gleal             #+#    #+#              #
#    Updated: 2021/04/08 00:06:24 by gleal            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

docker stop$(docker ps –q)
docker rm $(docker ps –q -a)
docker rmi $(docker images -q -a)
docker system prune
