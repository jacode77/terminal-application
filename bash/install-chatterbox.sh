#!/bin/bash
echo "Hi there! Thanks for your interest in Chatterbox"
echo "Please name your project"
read PROJECT
echo "Your project will be called ${PROJECT}"
mkdir $PROJECT
cd $PROJECT
mkdir src
mkdir ppt
mkdir docs
touch README.md