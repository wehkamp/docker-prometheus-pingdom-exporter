FROM alpine:3.4
MAINTAINER Joseph Salisbury <joseph@giantswarm.io>

LABEL container.name=wehkamp/prometheus-pingdom-exporter:0.1

COPY ./prometheus-pingdom-exporter /prometheus-pingdom-exporter

RUN apk update && apk add ca-certificates

EXPOSE 8000

ENTRYPOINT ["/prometheus-pingdom-exporter"]
