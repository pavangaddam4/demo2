FROM openjdk:8-jdk-alpine
VOLUME /tmp
ARG JAR_FILE=target/demo2-0.0.1-SNAPSHOT.jar
ARG IMG_FILE=imagedefinitions.json
ADD ${JAR_FILE} demo2-0.0.1-SNAPSHOT.jar
ADD ${IMG_FILE} imagedefinitions.json
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/demo2-0.0.1-SNAPSHOT.jar"]
EXPOSE 8081
