nmap
====

Docker image for [Nmap](https://nmap.org/)

Usage with my image:

		$ docker run -it infoslack/nmap www.example.com

If you want to generate the image:

		$ git clone git@github.com:infoslack/sec-tools.git
		$ cd sec-tools/nmap
		$ docker build -t nmap .
