FROM blalor/supervised:latest
MAINTAINER Brian Lalor <blalor@bravo5.org>

EXPOSE 8125/udp
EXPOSE 8126

ADD src /tmp/src/
RUN /tmp/src/config.sh
