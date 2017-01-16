FROM factual/docker-cdh5-devbox

MAINTAINER agate<agate.hao@gmail.com>

RUN apt-get update
RUN apt-get install -y byobu vim-nox curl wget mosh
RUN apt-get install -y libsqlite3-dev
RUN apt-get install -y apt-utils
RUN apt-get -y upgrade

RUN apt-get install -y apt-transport-https ca-certificates
RUN apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
RUN echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | tee /etc/apt/sources.list.d/docker.list
RUN apt-get update
RUN apt-get install -y docker-engine docker-compose

RUN apt-get install -y postgresql-client
