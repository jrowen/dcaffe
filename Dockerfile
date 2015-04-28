FROM tleyden5iwx/caffe-cpu-master
MAINTAINER "Jonathan Owen" jonathanro@gmail.com

RUN cd /opt/caffe && \
  (easy_install rodeo)

RUN mkdir /home/caffe && \
  cd /home/caffe && \
  rodeo . --host=0.0.0.0 --port=5000 --no-browser
