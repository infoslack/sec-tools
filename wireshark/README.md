wireshark
=========

Docker image for [Wireshark](https://www.wireshark.org/)

Usage:
```
$ docker run -d \
	--net=host --privileged \
	-e DISPLAY=unix$DISPLAY \
	-v /tmp/.X11-unix:/tmp/.X11-unix \
	-v $(pwd)/pcap:/pcap \
	infoslack/wireshark
```
