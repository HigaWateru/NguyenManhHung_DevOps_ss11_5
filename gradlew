#!/bin/sh

set -e

APP_HOME=$(cd "$(dirname "$0")" && pwd)

if [ -n "$JAVA_HOME" ] ; then
    JAVACMD="$JAVA_HOME/bin/java"
else
    JAVACMD="java"
fi

CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

if [ ! -f "$CLASSPATH" ]; then
    if command -v gradle >/dev/null 2>&1; then
        exec gradle "$@"
    else
        mkdir -p "$APP_HOME/gradle/wrapper"
        echo "Downloading gradle-wrapper.jar..."
        curl -sLo "$CLASSPATH" https://raw.githubusercontent.com/gradle/gradle/v8.5.0/gradle/wrapper/gradle-wrapper.jar || true
    fi
fi

if [ -f "$CLASSPATH" ]; then
    exec "$JAVACMD" -jar "$CLASSPATH" "$@"
else
    gradle "$@"
fi
