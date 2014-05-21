#!/bin/bash

set -e -u -x

cd /tmp/src

## install files
mv program-*.conf /etc/supervisor.d/
mv logstash-forwarder-*.json /etc/logstash-forwarder.d/

mv statsd_config.js /etc/

## install statsd
yum install -y nodejs-0.10.28-1 ## from my yum repo
npm install -g statsd@0.7.1

## cleanup
cd /
yum clean all
rm -rf /var/tmp/yum-root* /tmp/src
