FROM tleyden5iwx/caffe-cpu-master
MAINTAINER "Jonathan Owen" jonathanro@gmail.com

RUN cd /opt/caffe && \
  (easy_install rodeo && \
   easy_install cherrypy)

RUN mkdir /opt/rodeo
ADD server.py /opt/rodeo/server.py
RUN chmod 777 /opt/rodeo/server.py

RUN mkdir /home/caffe && \
  chmod 777 /home/caffe

EXPOSE 5000

WORKDIR /home/caffe

CMD python /opt/rodeo/server.py
