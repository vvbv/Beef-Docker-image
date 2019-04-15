FROM ruby:2.4

RUN apt update
RUN apt install git sudo -y
RUN cd /
RUN git clone https://github.com/beefproject/beef.git
RUN yes | /beef/install

CMD /bin/bash
