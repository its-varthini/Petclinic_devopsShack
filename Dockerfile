FROM openjdk:8u151-jdk-alpine3.7

EXPOSE 8082
ENV APP_HOME /usr/src/app

COPY target/petclinic.war $APP_HOME/petclinic.war
WORKDIR $APP_HOME
ENTRYPOINT exec java -jar petclinic.war
