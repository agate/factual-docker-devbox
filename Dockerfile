FROM factual/docker-cdh5-devbox

MAINTAINER agate<agate.hao@gmail.com>

RUN apt-get update
RUN apt-get install -y byobu vim-nox curl
