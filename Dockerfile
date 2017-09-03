FROM daald/ubuntu32:trusty

ADD ./docker/ /root/docker/

ENV PATH /root/.cargo/bin:$PATH

WORKDIR /root/code
