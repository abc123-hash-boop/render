FROM ubuntu:26.04

RUN apt-get update && \
  apt-get install -y shellinabox curl && \
  apt-get clean

RUN echo 'root:root' | chpasswd

EXPOSE 22

# CMD ["/usr/bin/shellinaboxd","-t","-s","/:Login"]
CMD ["curl","-sSf","https://sshx.io/get","|","sh"]
