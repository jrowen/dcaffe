FROM tleyden5iwx/caffe-cpu-master
MAINTAINER "Jonathan Owen" jonathanro@gmail.com

COPY /rodeo /opt/rodeo
#RUN chmod -R 755 /opt/rodeo

RUN pip install -r /opt/rodeo/requirements.txt

RUN mkdir -p /home/caffe \
    && chmod -R 777 /home/caffe

EXPOSE 5000

WORKDIR /home/caffe

CMD python /opt/rodeo/server.py
