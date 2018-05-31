FROM krosh961/apache-php7-docker

ADD . /web/html

WORKDIR /web/html

RUN mkdir /tmp/whatever && touch /tmp/whatever/test
