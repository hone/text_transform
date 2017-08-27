#!/bin/bash
if [[ "$TRAVIS_TAG" =~ ^v[0-9.]+ ]]; then
  #mkdir -p ~/.gem
  #echo $RUBYGEMS_AUTH_TOKEN > ~/.gem/credentials
  #chmod 0600 ~/.gem/credentials

  gem build text_transform.gemspec
  gem unpack text_transform-`${TRAVIS_TAG#"v"}`.gem
  tree text_transform-`${TRAVIS_TAG#"v"}`
fi
