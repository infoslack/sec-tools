wpscan
======

Docker image for [wpscan](http://wpscan.org/)

Usage with my image:

		$ docker run --rm -it infoslack/wpscan --url www.example.com

If you want to generate the image:

		$ git clone git@github.com:infoslack/sec-tools.git
		$ cd sec-tools/wpscan
		$ docker build -t wpscan .

You can create a bash wrapper for docker run commands in you `.bashrc`
or similar:

```bash
wpscan(){
docker run --rm -it \
  -v /tmp/wpscan/cache:/wpscan/cache \
  --log-driver none \
  infoslack/wpscan "$@"
}
```

#### WPSCAN EXAMPLES

Do 'non-intrusive' checks...

		$ wpscan --url www.example.com

Do wordlist password brute force on enumerated users using 50 threads...

		$ wpscan --url www.example.com --wordlist darkc0de.lst --threads 50

Do wordlist password brute force on the 'admin' username only...

		$ wpscan --url www.example.com --wordlist darkc0de.lst --username admin

Enumerate installed plugins...

		$ wpscan --url www.example.com --enumerate p

Run all enumeration tools...

		$ wpscan --url www.example.com --enumerate

Use custom content directory...

		$ wpscan -u www.example.com --wp-content-dir custom-content

Update WPScan's databases...

		$ wpscan --update

Debug output...

		$ wpscan --url www.example.com --debug-output 2>debug.log
