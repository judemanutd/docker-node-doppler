ARG VERSION_NODE=14.17-alpine3.11

FROM node:${VERSION_NODE} 
RUN apk add --no-cache gnupg gettext
RUN gpg --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
RUN wget -qO- https://cli.doppler.com/install.sh | sh