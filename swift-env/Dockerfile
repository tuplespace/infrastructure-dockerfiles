FROM swift:5.4

WORKDIR /build
RUN git clone https://github.com/lz4/lz4.git
WORKDIR /build/lz4
RUN make
RUN make install

RUN apt-get update --fix-missing
RUN apt-get -y install libcurl4-openssl-dev zlib1g-dev libssl-dev --no-install-recommends

WORKDIR /build
