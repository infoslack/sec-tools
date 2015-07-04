wpscan
======

Docker image for [arachni](http://www.arachni-scanner.com/)

Usage with my image:

		$ docker run --rm -it infoslack/arachni

If you want to generate the image:

		$ git clone git@github.com:infoslack/sec-tools.git
		$ cd sec-tools/arachni
		$ docker build -t arachni .

You can create a bash wrapper for docker run commands in you `.bashrc`
or similar:

```bash
arachni(){
docker run --rm -it \
  -v $(pwd)/arachni_pentest:/pentest \
  --log-driver none \
  infoslack/arachni "$@"
}
```
#### Command line user interface

		$ arachni http://test.com

More: [https://github.com/Arachni/arachni/wiki/Command-line-user-interface](https://github.com/Arachni/arachni/wiki/Command-line-user-interface)
