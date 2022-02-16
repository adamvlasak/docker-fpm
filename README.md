# docker-fpm
Docker container with fpm installed

## Prerequisities
- docker

## Installation
Clone this repository and call docker build like so:
```
$ docker build -t fpm:latest .
```

## Creating packages
To create a rpm package for example for JetBrains Rider from directory:
```
$ cd ~/Downloads
$ tar xvf JetBrains.Rider-2021.3.3.tar.gz
$ cd JetBrains.Rider-2021.3.3
$ docker run -ti --rm -v ${PWD}:/packages fpm:latest -s dir -t rpm --prefix /opt/rider -n jetbrains-rider -v 2021.3.3 .
```

More options at https://github.com/jordansissel/fpm/wiki

Enjoy!
