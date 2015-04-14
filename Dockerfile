FROM ubuntu:trusty
MAINTAINER Aaron Lelevier <pyaaron@textress.com>
RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y build-essential git python python-dev python-setuptools nginx sqlite3 supervisor
RUN easy_install pip
RUN pip install uwsgi

# Saltstack
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y python-software-properties software-properties-common
RUN add-apt-repository ppa:saltstack/salt
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y salt-master salt-minion salt-syndic salt-cloud salt-ssh salt-api

