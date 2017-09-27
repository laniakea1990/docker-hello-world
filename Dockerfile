FROM openjdk:8-jdk-alpine
MAINTAINER jrr
COPY /home/raiseking/jenkins-mnt-a/workspace/pipelineTest/target/demo-0.0.1-SNAPSHOT.jar app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar" ]