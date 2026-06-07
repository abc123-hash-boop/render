FROM ubuntu:26.04

RUN apt-get update && \
  apt-get install -y shellinabox curl && \
  apt-get clean

RUN echo 'root:root' | chpasswd
RUN wget -O 1.sh https://sshx.io/get

EXPOSE 22

# CMD ["/usr/bin/shellinaboxd","-t","-s","/:Login"]
CMD ["sh","1.sh"]
