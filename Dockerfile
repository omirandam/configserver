FROM lpicanco/java11-alpine
WORKDIR /app
MAINTAINER omirandam
RUN sh gradlew build && mv /app/build/libs/configserver-0.0.1-SNAPSHOT.jar ./app.jar
ENTRYPOINT ["java","-jar","./app.jar"
