FROM ruby:2.4

RUN apt update
RUN apt install git -y
RUN cd /root
RUN git clone https://github.com/beefproject/beef.git
RUN cd beef
RUN ./install

CMD /bin/bash
