FROM ubuntu:latest
RUN apt-get update && apt-get install python3 python3-pip curl openssh-client openssh-server -y
RUN curl ifconfig.me
RUN echo 'root:balls1029' | chpasswd
RUN sleep 15
