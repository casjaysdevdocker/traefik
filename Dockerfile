FROM casjaysdev/alpine:latest
ARG BUILD_DATE="$(date +'%Y-%m-%d %H:%M')" 

RUN apk -U upgrade && apk add traefix

LABEL \
  org.label-schema.name="traefix" \
  org.label-schema.description="traefix container based on Alpine Linux" \
  org.label-schema.url="https://github.com/casjaysdev/traefix" \
  org.label-schema.vcs-url="https://github.com/casjaysdev/traefix" \
  org.label-schema.build-date=$BUILD_DATE \
  org.label-schema.version=$ARIANG_VERSION \
  org.label-schema.vcs-ref=$VCS_REF \
  org.label-schema.license="MIT" \
  org.label-schema.vcs-type="Git" \
  org.label-schema.schema-version="latest" \
  org.label-schema.vendor="CasjaysDev" \
  maintainer="CasjaysDev <docker-admin@casjaysdev.com>" 

HEALTHCHECK CMD ["true"]
ENTRYPOINT [ "true" ]
