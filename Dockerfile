FROM ubuntu:24.04

RUN apt-get update && \
  apt-get install -y shellinabox && \
  apt-get clean

RUN echo 'root:root' | chpasswd

EXPOSE 22

CMD ["/usr/bin/shellinaboxd","-t","-s","/:LOGIN"]
