FROM openjdk:8-jdk-alpine
LABEL maintainer="laniakea1990@163.com"
ARG targetName=demo-0.0.1-SNAPSHOT.jar
COPY target/$targetName app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar" ]