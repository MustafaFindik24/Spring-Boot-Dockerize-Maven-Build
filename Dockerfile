FROM maven:3.8.7-openjdk-18-slim AS build
COPY ./src /usr/src/app/src
COPY ./pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package -P prod -D skipTests

FROM openjdk:18.0-jdk-slim
COPY --from=build /usr/src/app/target/DockerizeMavenBuildDemo-0.0.1-SNAPSHOT.jar /usr/local/lib/demo.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","/usr/local/lib/demo.jar"]