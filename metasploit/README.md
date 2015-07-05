docker-metasploit
==================

Docker image for [Metasploit Framework](http://www.metasploit.com/)

Usage with my image:

		$ docker run -d --name=postgres postgres:9.3
		$ docker run -it --link postgres:db infoslack/metasploit

* The initial module cache will be built in the background, this can take 2-5 minutes.

If you want to generate the image:

		$ git clone git@github.com:infoslack/sec-tools.git
		$ cd sec-tools/metasploit
		$ docker build -t metasploit .

Usage with [docker-compose](https://docs.docker.com/compose/):

		$ docker-compose up -d db
		$ docker-compose up msf
