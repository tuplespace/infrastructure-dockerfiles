FROM debian:bullseye-slim AS base

RUN apt-get update
RUN apt-get -y install software-properties-common apt-transport-https ca-certificates man wget gnupg2 ruby2.7 unzip --no-install-recommends
RUN wget -O- https://apt.corretto.aws/corretto.key | apt-key add - 
RUN add-apt-repository 'deb https://apt.corretto.aws stable main'
RUN apt-get update
RUN apt-get install -y java-1.8.0-amazon-corretto-jdk --no-install-recommends


WORKDIR /build
COPY . .

RUN ./gradlew assembleDist

RUN unzip build/distributions/tailor-0.12.0.zip


CMD [ "bash" ]




# COPY --from=build /build/build/distributions/tailor-0.12.0 /opt/
# RUN ln -s /opt/tailor-0.12.0/bin/tailor /usr/local/bin/tailor