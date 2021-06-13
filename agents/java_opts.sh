#!/bin/bash

# OpenTelemetry:
# https://github.com/open-telemetry/opentelemetry-java-instrumentation
if [ "${OTEL_EXPORTER}" == "jaeger" ]; then
	JAVA_OPTS="${JAVA_OPTS} \
  -Dotel.exporter=jaeger \
  -Dotel.jaeger.endpoint=jaeger:14250 \
  -Dotel.jaeger.service.name=otel-ui \
  -javaagent:${APP_HOME}/opentelemetry-javaagent-all.jar"

elif [ "${OTEL_EXPORTER}" == "splunk-otel" ]; then

  # Splunk observability
  export OTEL_RESOURCE_ATTRIBUTES="service.name=${APP_NAME},deployment.environment=dev"
  export OTEL_EXPORTER_OTLP_ENDPOINT='http://splunk-otel-collector:4317'

  JAVA_OPTS="${JAVA_OPTS} \
    -javaagent:${APP_HOME}/splunk-otel-javaagent.jar -Dsplunk.metrics.enabled=true"

elif [ "${OTEL_EXPORTER}" == "newrelic" ]; then
  # Newrelic one
  export NEW_RELIC_APP_NAME="${APP_NAME}"
  export NEW_RELIC_LICENSE_KEY="${NEW_RELIC_LICENSE_KEY}"

  JAVA_OPTS="${JAVA_OPTS} \
    -javaagent:${APP_HOME}/newrelic.jar"
fi
