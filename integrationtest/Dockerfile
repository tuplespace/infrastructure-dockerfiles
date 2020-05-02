FROM docker:19.03.8-git

ADD https://kind.sigs.k8s.io/dl/v0.8.0/kind-Linux-amd64 /usr/local/bin/
RUN chmod +x /usr/local/bin/kind

ADD https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl /usr/local/bin/
RUN chmod +x /usr/local/bin/kubectl
