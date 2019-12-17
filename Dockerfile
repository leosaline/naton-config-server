FROM openjdk:8-jdk-alpine
VOLUME /tmp /tmp/natonconfig:/var/clone
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN rm -rf  /tmp/*
ENTRYPOINT ["java","-jar", "-Xmx128m", "/app.jar"]