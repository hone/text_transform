#!/bin/sh
setarch i686 -B apt-get install -y software-properties-common
setarch i686 -B apt-add-repository ppa:brightbox/ruby-ng
setarch i686 -B apt-get update
setarch i686 -B apt-get install ruby2.2 ruby2.2-dev -y
setarch i686 -B gem install bundler
