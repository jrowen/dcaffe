[![Build Status](https://travis-ci.org/jrowen/dcaffe.svg?branch=master)](https://travis-ci.org/jrowen/dcaffe)

Docker image based on [tleyden5iwx/caffe-cpu-master](https://registry.hub.docker.com/u/tleyden5iwx/caffe-cpu-master/) and [caffe](http://caffe.berkeleyvision.org/).

Use the commands below to run rodeo at localhost:5000 and map ~/caffe to /home/caffe in the container.
```
docker pull jrowen/dcaffe

docker run -d -p 5000:5000 -v ~/caffe:/home/caffe -w /home/caffe jrowen/dcaffe
```
