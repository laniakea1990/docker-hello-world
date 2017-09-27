FROM openjdk:8-jdk-alpine
MAINTAINER jrr
COPY /var/jenkins_home/workspace/pipeline0927/target/*.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar" ]