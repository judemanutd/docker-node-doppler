ARG VERSION_NODE=16.1-alpine3.11

FROM node:${VERSION_NODE} 
RUN apk add --no-cache gnupg
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
RUN wget -qO- https://cli.doppler.com/install.sh | sh