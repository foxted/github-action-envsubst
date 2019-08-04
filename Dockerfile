FROM alpine:3.6

RUN apk add --update libintl && apk add --virtual build_deps gettext
