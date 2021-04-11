# ft_server

In this project we are asked to setup a Nginx webserver inside a single Docker container.

## Features
- Built on top of **Linux Debian:buster** (latest version at the moment)
- Ability to store backend data in **MySQL database**
- **phpMyAdmin** database administrator
- **Wordpress**
- Use of **SSL** Protocol (redirection from http to https)
- Apply autoindex (See tree structure of phpMyAdmin and Wordpress)

A great explanation of each of these features were given by [Ji Woo Lee](https://velog.io/@ljiwoo59/ftserver#wordpress)

## Understanding Docker

For this project I recommend first following a [Docker tutorial](https://www.youtube.com/watch?v=fqMOX6JJhGo).
This one was suggested by [Dimitri](https://github.com/DimitriDaSilva) and it is a great overview (from instalation to images, containers, ports... basically everything you need to know. Don't forget to do their Docker Labs Exercises to get comfortable with Docker).

### After watching that tutorial, the main takeaways that I got were:

- Applications are complex. They need different pieces of software for their different features (example Nginx for the server, Mariadb for the mysql databases, PHP 7.3 to read the .php files).
- These pieces of software can have different versions that need to be compatible among each other.
- Not only that but different operating systems have different native commands and compatibility needs.

### - How does Docker help with these issues:

  - It works like a mini Linux Kernel Virtual Machine that allows us to specify different Linux based Operating Systems (Debian, Ubuntu, ...) without having to install a Virtual Machine (Virtual Machines take up many Gbs worth of space and Ubuntu Docker Image takes MBs worth of space).
 
  - The Container is isolated from the host machine. This means that if you start a container, go inside it using the `run -it imagename` all the software that you install will be installed inside that container. When you remove the container you are sure that everything you installed inside is also removed.

  - Building an complex image is really fast. Especially in the consecutive times you build them. Docker stores cache data about the images that you built previously in the dockerfile so if you make changes to any part of your software and you rebuild the image it will load extremely fast.

- Imagine you have installed the latest version of Homebrew 3.0.11 but to deploy a particular application you need an older version 2.7.1 to install an old software. You don't need to unninstall your Homebrew, download the old one to deploy the application and then redownload the updated version when you're done. You can just create a dockerfile, install homebrew 2.7.1 and deploy the application and then remove the container when you're done.

- So we just need to follow this logic for all the software components we're using.
  - To deploy our server we need Debian:Buster Operating system, Nginx Web server, and we need relatively recent mySQL and PHP versions in order to be compatible with the current Wordpress requirements.
