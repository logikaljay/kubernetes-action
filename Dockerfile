FROM alpine:3.11

ARG KUBECTL_VERSION="1.27.2"

RUN apk add curl
RUN curl -L -o /usr/bin/kubectl https://dl.k8s.io/release/v1.27.2/bin/linux/amd64/kubectl
RUN chmod +x /usr/bin/kubectl

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
