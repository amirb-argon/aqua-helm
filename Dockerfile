FROM alpine:latest
RUN apk add --no-cache ca-certificates git curl && \
    wget -q https://get.helm.sh/helm-v3.7.2-linux-amd64.tar.gz && \
    tar -zxvf helm-v3.7.2-linux-amd64.tar.gz && \
    mv linux-amd64/helm /usr/local/bin && \
    wget -q https://github.com/instrumenta/kubeval/releases/latest/download/kubeval-linux-amd64.tar.gz && \
    tar xf kubeval-linux-amd64.tar.gz && \
    mv kubeval /usr/local/bin && \
    curl -sfL https://raw.githubusercontent.com/aquasecurity/trivy/main/contrib/install.sh | sh -s -- -b /usr/local/bin
