FROM docker:18.06.3-ce-git

RUN apk add tar zip gzip git curl
RUN curl --progress-bar "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
RUN unzip awscliv2.zip
RUN ./aws/install
RUN rm awscliv2.zip
RUN rm -rf aws
