A tiny web server in C
======================

Slightly modified fork, to address some build warnings and compile by
default with clang but also added a build target that uses gcc. And
additionally strip the binary. Have done very little testing of this
server but the basics seem to work.

I am always curious to look at small webservers that can be run quickly
and use very few resources.

Features
--------

1. Basic MIME mapping
2. Very basic directory listing
3. Low resource usage
4. [sendfile(2)](http://kernel.org/doc/man-pages/online/pages/man2/sendfile.2.html)
5. Support Accept-Ranges: bytes (for in browser MP4 playing)
6. Concurrency by pre-fork

Non-features
------------

1. This server is meant to be run on a trusted network and accessed only by
trusted clients. So there are no thoughts here to make it secure or operate
via TLS, etc., etc., etc. Running it on a public internet would be a dumb thing
to do.

Usage
-----

`tiny <port>`, starts a server in the current directory, port
defaults to 9999. This server is meant to be similar to running
`python2 -m SimpleHTTPServer` or
`python3 -m http.server`

Then point your browser at http://0.0:9999

I use it as a lightweight File Browser.


TODO
----

1. Write an epoll version.
2. Add file upload ability.


License
-------

The code is free to use under the terms of the MIT license.
