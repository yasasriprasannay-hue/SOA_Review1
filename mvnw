#!/usr/bin/env sh
if [ -z "$JAVA_HOME" ] && [ -d "/c/Program Files/Java/jdk-21" ]; then
    export JAVA_HOME="/c/Program Files/Java/jdk-21"
fi
MAVEN_CMD="/c/Users/Vempa/.m2/wrapper/dists/apache-maven-3.9.14/ed7edd442f634ac1c1ef5ba2b61b6d690b5221091f1a8e1123f5fadcc967520d/bin/mvn"
if [ -f "$MAVEN_CMD" ]; then
    exec "$MAVEN_CMD" "$@"
else
    exec mvn "$@"
fi
