# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    clean_containers.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gleal <gleal@student.42lisboa.com>         +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/07 20:31:30 by gleal             #+#    #+#              #
#    Updated: 2021/04/11 01:14:03 by gleal            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

docker rm $(docker container ls -qa)
docker rmi $(docker images -q -a )
#docker system prune --force
