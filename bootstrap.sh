#!/usr/bin/env bash

apt-get update > /dev/null
apt-get install -y curl vim nodejs git libyaml-dev libxslt-dev libxml2-dev libsqlite3-dev libsqlite3-dev sqlite3

su -c 'bash /vagrant/bootstrap-vagrant.sh' vagrant
