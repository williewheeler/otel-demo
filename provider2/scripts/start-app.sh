#!/bin/bash

[ -z "$JAVA_XMS" ] && JAVA_XMS=548m
[ -z "$JAVA_XMX" ] && JAVA_XMX=548m

set -e

# OpenTelemetry:
# https://github.com/open-telemetry/opentelemetry-java-instrumentation
[ "${OTEL_EXPORTER}" == "jaeger" ] && JAVA_OPTS="${JAVA_OPTS} \
  -Xms${JAVA_XMS} \
  -Xmx${JAVA_XMX} \
  -Dapplication.name=${APP_NAME} \
  -Dapplication.home=${APP_HOME} \
  -Dotel.exporter=jaeger \
  -Dotel.jaeger.endpoint=jaeger:14250 \
  -Dotel.jaeger.service.name=otel-provider2 \
  -javaagent:${APP_HOME}/opentelemetry-javaagent-all.jar"

export OTEL_RESOURCE_ATTRIBUTES="service.name=${APP_NAME},deployment.environment=dev"
export OTEL_EXPORTER_OTLP_ENDPOINT='http://splunk-otel-collector:4317'

[ "${OTEL_EXPORTER}" == "splunk-otel" ] && JAVA_OPTS="${JAVA_OPTS} \
  -Xms${JAVA_XMS} \
  -Xmx${JAVA_XMX} \
  -Dapplication.name=${APP_NAME} \
  -Dapplication.home=${APP_HOME} \
  -javaagent:${APP_HOME}/splunk-otel-javaagent.jar -Dsplunk.metrics.enabled=true"

exec java ${JAVA_OPTS} \
  -jar "${APP_HOME}/${APP_NAME}.jar" \
  --spring.config.location=/config/application.yml
