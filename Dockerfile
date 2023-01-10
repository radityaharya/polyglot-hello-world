FROM ubuntu:20.04

ADD . /
RUN chmod +x detonate.sh
RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y gcc
RUN apt-get install -y default-jdk
RUN apt-get install -y mono-complete
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_19.x | bash - && apt-get install -y nodejs
CMD ["/bin/bash", "detonate.sh"]