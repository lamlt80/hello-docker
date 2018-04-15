FROM openjdk:8-jdk-alpine

VOLUME /tmp

ADD target/hello-docker.jar hello-docker.jar

ENV JAVA_OPTS=""

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -jar /hello-docker.jar" ]