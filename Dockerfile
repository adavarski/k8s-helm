FROM alpine:3.7
MAINTAINER Anastas Davarski

# https://aur.archlinux.org/packages/kubectl-bin/
ARG KUBECTL_VERSION=v1.9.1
# https://github.com/kubernetes/helm/releases
ARG HELM_VERSION=v2.11.0

# install dependencies
RUN apk add --no-cache ca-certificates tar wget openssl python bash

# install kubectl
RUN wget -q https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl -O /usr/local/bin/kubectl \
    && chmod a+x /usr/local/bin/kubectl

# install helm
RUN wget -q https://storage.googleapis.com/kubernetes-helm/helm-${HELM_VERSION}-linux-amd64.tar.gz \
    && tar -xvf helm-${HELM_VERSION}-linux-amd64.tar.gz \
    && mv linux-amd64/helm /usr/local/bin/helm \
    && chmod a+x /usr/local/bin/helm \
    && rm -rf helm-${HELM_VERSION}-linux-amd64.tar.gz linux-amd64

ENV PATH=$PATH:/usr/local/bin

CMD ["bash"]
