FROM fishead/node-opencv
LABEL dlib Yin jiao<yinjiao@jcble.com>

WORKDIR /usr/local/src

RUN apt-get update &&\
    apt-get install -y --no-install-recommends python libboost-dev cmake 
RUN cd /usr/local/src  &&\
    git clone  --depth 1 https://github.com/davisking/dlib.git  && \
    cd dlib/examples && \
    mkdir build && \
    cd build && \
    cmake .. && \
    cmake --build . --config Release  