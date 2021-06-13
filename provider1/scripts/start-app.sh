#!/bin/bash

[ -z "$JAVA_XMS" ] && JAVA_XMS=548m
[ -z "$JAVA_XMX" ] && JAVA_XMX=548m

set -e

# setup java agents
. ./java_opts.sh

exec java ${JAVA_OPTS} \
  -jar "${APP_HOME}/${APP_NAME}.jar" \
  --spring.config.location=/config/application.yml
