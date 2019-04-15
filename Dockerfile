FROM ruby:2.6.0

ARG USERNAME=root
ARG PASSWORD=root

RUN apt-get update
RUN apt-get install git sudo xterm bundler curl software-properties-common -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install nodejs
RUN git clone https://github.com/beefproject/beef.git
ENV TERM=xterm
WORKDIR /beef
RUN yes | /bin/bash install
RUN yes | /bin/bash update-geoipdb

CMD /bin/bash
