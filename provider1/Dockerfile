# NOTE: Users must mount the Spring config file to /config/application.yml.

FROM openjdk:11-jre
LABEL maintainer="Willie Wheeler"

ENV APP_NAME otel-provider1
ENV APP_HOME /app/bin

RUN mkdir -p ${APP_HOME}

COPY ./target/${APP_NAME}-*.jar ${APP_HOME}/${APP_NAME}.jar
COPY ./tmp/opentelemetry-javaagent-all.jar ${APP_HOME}/
COPY ./scripts/start-app.sh ${APP_HOME}/

WORKDIR ${APP_HOME}

ENTRYPOINT [ "./start-app.sh" ]
