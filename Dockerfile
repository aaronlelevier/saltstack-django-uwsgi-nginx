FROM ubuntu:trusty
MAINTAINER Aaron Lelevier <pyaaron@textress.com>
RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential git python python-dev python-setuptools nginx sqlite3 supervisor
RUN easy_install pip
RUN pip install uwsgi