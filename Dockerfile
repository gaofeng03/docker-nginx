############################################################

# Dockerfile to build nginx container images

# Based on daocloud.io/library/nginx:1.7.1

############################################################
# base
FROM daocloud.io/library/nginx:1.7.1
MAINTAINER lewis.gao/gaofeng03@163.com
USER root

# WORKDIR /root
# RUN mkdir .ssh
# ADD id_rsa /root/.ssh/id_rsa
# ADD known_hosts /root/.ssh/known_hosts
# RUN chmod -R 700 .ssh/
# RUN echo "    IdentityFile ~/.ssh/id_rsa" >> /etc/ssh/ssh_config
# RUN git config --global user.email "gaofeng0300"
# RUN git config --global user.name "gaofeng0300"

WORKDIR /etc

ADD ./nginx/etc/cert /etc/cert
ADD ./nginx/etc/nginx.conf /etc/nginx.conf
ADD ./nginx/etc/reverse-proxy.conf /etc/reverse-proxy.conf
ADD ./nginx/html /usr/local/nginx/html