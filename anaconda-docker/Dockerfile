FROM centos:7

MAINTAINER Keith Blaha <keith.blaha@gmail.com>

RUN curl -O https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh

RUN yum install -y bzip2

ENV ANACONDA_HOME=/anaconda

RUN bash Anaconda3-4.3.1-Linux-x86_64.sh -b -p $ANACONDA_HOME

ENV PATH="$ANACONDA_HOME/bin:$PATH"

CMD bash
