FROM tleyden5iwx/caffe-cpu-master
MAINTAINER "Jonathan Owen" jonathanro@gmail.com

RUN cd /opt/caffe && \
  (easy_install rodeo)
