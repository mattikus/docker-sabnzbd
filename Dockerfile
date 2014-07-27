FROM ubuntu:trusty
MAINTAINER Matt Kemp <matt@mattikus.com>

RUN locale-gen en_US en_US.UTF-8

RUN echo "deb http://archive.ubuntu.com/ubuntu trusty multiverse" >> /etc/apt/sources.list
RUN echo "deb http://ppa.launchpad.net/jcfp/ppa/ubuntu trusty main" >> /etc/apt/sources.list

RUN apt-get -q update
RUN apt-get install -qy --force-yes sabnzbdplus sabnzbdplus-theme-classic sabnzbdplus-theme-mobile sabnzbdplus-theme-plush par2 python-yenc unrar unzip 

VOLUME ["/config", "/data"]

EXPOSE 8080

CMD ["/usr/bin/sabnzbdplus", "-f", "/config", "-s", ":8080"]
