FROM alpine:3.10.2

ARG BUILD_DATE
ARG VCS_REF
ARG BUILD_VERSION

LABEL org.label-schema.name="mbigras/labels"
LABEL org.label-schema.description="Experiment with container labels"
LABEL org.label-schema.vcs-url="https://github.com/mbigras/labels"
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.version=$BUILD_VERSION

WORKDIR /app
RUN apk add --update --upgrade python3
COPY index.html .
