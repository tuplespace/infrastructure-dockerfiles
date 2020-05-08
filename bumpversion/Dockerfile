FROM tuplestream/base-build:latest

RUN pip3 install --upgrade bump2version
ADD bump /usr/local/bin/

WORKDIR /tmp
ADD https://github.com/github/hub/releases/download/v2.14.2/hub-linux-amd64-2.14.2.tgz hub.tgz
RUN tar -xzvf hub.tgz
RUN mv ./hub-linux-amd64-2.14.2/bin/hub /usr/local/bin/
RUN rm -rf /tmp/hub*

WORKDIR /build
