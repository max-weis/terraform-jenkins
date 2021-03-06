#!/bin/sh

set -e

apt-get install gnupg2 openjdk-11-jdk -y

wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > \
    /etc/apt/sources.list.d/jenkins.list'

apt-get update -y
apt-get install jenkins -y

apt-get clean