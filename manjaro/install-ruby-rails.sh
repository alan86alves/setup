#!/bin/bash

curl -L get.rvm.io > rvm-install

bash < ./rvm-install

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bash_profile

source ~/.bash_profile

rvm requirements

rvm install ruby
