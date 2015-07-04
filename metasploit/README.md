docker-metasploit
==================

Docker image for Metasploit Framework

Usage with [my image](https://registry.hub.docker.com/u/infoslack/docker-metasploit/):

		$ docker pull infoslack/docker-metasploit
		$ docker run -d --name=postgres postgres:9.3
		$ docker run -it --link postgres:db infoslack/docker-metasploit

* The initial module cache will be built in the background, this can take 2-5 minutes.

If you want to generate the image:

		$ git clone git@github.com:infoslack/sec-tools.git
		$ cd sec-tools/metasploit
		$ docker build -t docker-metasploit .

Usage with [docker-compose](https://docs.docker.com/compose/):

		$ docker-compose up -d db
		$ docker-compose up msf
