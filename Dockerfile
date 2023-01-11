FROM alpine:edge

WORKDIR /opt/lams

RUN apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ upgrade && \
 apk --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing/ add \
 nodejs npm

RUN npm install -g npm@8.19.3

RUN  npm i -g @looker/look-at-me-sideways@2 --unsafe-perm

CMD ["/bin/sh"]
