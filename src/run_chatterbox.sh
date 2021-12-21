#!/bin/bash

if ! gem list 'colorize' -i ||
    ! gem list 'tty-prompt' -i || 
    ! gem list 'lolize' -i || 
    ! gem list 'rspec' -i
    then
    gem install bundler
    bundle install
fi

echo "Hi there! Thanks for your interest in Chatterbox. To enjoy the true Chatterbox experience this application is best viewed in a terminal at 108 x 31 or full screen"
ruby main.rb