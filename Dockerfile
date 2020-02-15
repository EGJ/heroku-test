FROM zookeeper:latest

ADD ./zooconf.conf /conf/zoo.cfg

CMD gunicorn --bind 0.0.0.0:$PORT wsgi