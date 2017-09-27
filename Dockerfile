FROM openjdk:8-jdk-alpine
MAINTAINER jrr
ARG targetName=demo-0.0.1-SNAPSHOT.jar
COPY target/$targetName app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar" ]