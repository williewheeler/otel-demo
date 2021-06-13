# OpenTelemetry:
# https://github.com/open-telemetry/opentelemetry-java-instrumentation
[ "${OTEL_EXPORTER}" == "jaeger" ] && JAVA_OPTS="${JAVA_OPTS} \
  -Dotel.exporter=jaeger \
  -Dotel.jaeger.endpoint=jaeger:14250 \
  -Dotel.jaeger.service.name=otel-ui \
  -javaagent:${APP_HOME}/opentelemetry-javaagent-all.jar"

# Splunk observability
export OTEL_RESOURCE_ATTRIBUTES="service.name=otel-ui,deployment.environment=dev"
export OTEL_EXPORTER_OTLP_ENDPOINT='http://splunk-otel-collector:4317'

[ "${OTEL_EXPORTER}" == "splunk-otel" ] && JAVA_OPTS="${JAVA_OPTS} \
  -javaagent:${APP_HOME}/splunk-otel-javaagent.jar -Dsplunk.metrics.enabled=true"

# Newrelic one
export NEW_RELIC_APP_NAME="${APP_NAME}"
export NEW_RELIC_LICENSE_KEY="${NEW_RELIC_LICENSE_KEY}"

[ "${OTEL_EXPORTER}" == "newrelic" ] && JAVA_OPTS="${JAVA_OPTS} \
  -javaagent:${APP_HOME}/newrelic.jar"


