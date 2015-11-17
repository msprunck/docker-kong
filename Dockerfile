FROM centos:7
MAINTAINER Marco Palladino, marco@mashape.com

ENV KONG_VERSION 0.5.3

RUN yum install -y https://github.com/Mashape/kong/releases/download/$KONG_VERSION/kong-$KONG_VERSION.el7.noarch.rpm && \
    yum clean all 

VOLUME ["/etc/kong/"]

COPY config.docker/kong.yml /etc/kong/kong.yml
COPY start.sh /usr/local/kong/start.sh

CMD /usr/local/kong/start.sh

EXPOSE 8000 8001
