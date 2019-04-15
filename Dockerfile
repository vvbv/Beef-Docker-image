FROM ruby:2.5.3

ARG USERNAME=root
ARG PASSWORD=root

RUN apt update
RUN apt install git sudo xterm bundler -y
RUN git clone https://github.com/beefproject/beef.git
ENV TERM=xterm
WORKDIR /beef
RUN yes | /bin/bash install
RUN yes | /bin/bash update-geoipdb

CMD /bin/bash
