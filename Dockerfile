FROM daald/ubuntu32:trusty
RUN apt-get update && apt-get install -y curl build-essential git

RUN curl https://sh.rustup.rs -sSf | sh -s -- -y
RUN $HOME/.cargo/bin/rustup toolchain install stable-i686-unknown-linux-gnu
RUN $HOME/.cargo/bin/rustup default stable-i686-unknown-linux-gnu
ENV PATH /root/.cargo/bin:$PATH

RUN apt-get install -y software-properties-common
RUN apt-add-repository ppa:brightbox/ruby-ng
RUN apt-get update
RUN apt-get install ruby2.2 ruby2.2-dev -y
RUN gem install bundler

WORKDIR /root/code
