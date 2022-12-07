FROM golang:latest

ARG BUILDER_VERSION=0.66.0
ARG ARCH=amd64

RUN wget -q https://github.com/open-telemetry/opentelemetry-collector/releases/download/v${BUILDER_VERSION}/ocb_${BUILDER_VERSION}_linux_${ARCH}

RUN mv ocb_${BUILDER_VERSION}_linux_${ARCH} /usr/bin/otel-builder

RUN chmod +x /usr/bin/otel-builder

COPY ./action-run.sh /usr/bin/action-run

ENTRYPOINT ["action-run"]
