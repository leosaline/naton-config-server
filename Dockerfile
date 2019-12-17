FROM openjdk:8-jdk-alpine
VOLUME /tmp /var/clone
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN rm -rf  /tmp/*
RUN rm -rf  /var/clone*
ENTRYPOINT ["java","-jar", "-Xmx128m", "/app.jar"]