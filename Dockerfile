FROM ruby:2.4

ARG USERNAME=root
ARG PASSWORD=root

RUN apt update
RUN apt install git sudo xterm bundler -y
RUN git clone https://github.com/beefproject/beef.git
ENV TERM=xterm
WORKDIR /beef
RUN yes | ./install

CMD /bin/bash
