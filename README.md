About
=====

Run BMX7 routing daemon inside a docker container.

Why?
====

* Run many BMX7 on multiple containers
* Load testing
* Simulations
* Generate packet loss and latency via netem module  
* Etc...

Status
======

Not Working, hosts do not appear in "route -n" after a while.

Pre-built image
===============

If you want to try, here is a oneliner:

```
$ docker run --privileged zoobab/bmx7-in-docker
```
