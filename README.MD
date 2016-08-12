Rundeck Container
=================

This is a gcavalcante8808/rundeck docker image with Rundeck Installed. it's Base on JAVA:JRE official image.

Build the image
===============

```
    docker build -t gcavalcante8808/rundeck .
```

Usage
=====

Basic (localhost)
-----------------

```
    docker run \
    -d \
    -p 4440:4440
    --hostname localhost
    gcavalcante8808/rundeck
```

With jwilder/nginxProxy (jwilder in front as reverse proxy)
-----------------------------------------------------------

```
    docker run \
    -d \
    -e VIRTUAL_HOST=rundeck.example.com
    -e VIRTUAL_PORT=4440
    --hostname rundeck.example.com
    gcavalcante8808/rundeck
```

Author
------

Author: Gabriel Abdalla Cavalcante Silva (gabriel.cavalcante88@gmail.com)
