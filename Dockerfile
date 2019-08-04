FROM alpine:3.6

LABEL "com.github.actions.name"="envsubst"
LABEL "com.github.actions.description"="Use envsubst to extract environment variables"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/foxted/github-action-envsubst"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Valentin <valentin@whatdafox.com>"

RUN apk add --update libintl && apk add --virtual build_deps gettext

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
