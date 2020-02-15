FROM zookeeper:latest

ADD ./zooconf.conf /conf/zoo.cfg

RUN adduser -D myuser
USER myuser

RUN echo server.1=localhost:2888:3888;$PORT >> /conf/zoo.cfg