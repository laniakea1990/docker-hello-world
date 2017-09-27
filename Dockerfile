FROM openjdk:8-jdk-alpine
MAINTAINER jrr
ARG ARTIFACT=pipeline0927 
COPY /var/jenkins_home/workspace/$ARTIFACT/target/*.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar" ]