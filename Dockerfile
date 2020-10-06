#build app stage
FROM openjdk:8-alpine as build-stage
WORKDIR /src
ADD . /src/
RUN ls -la
RUN chmod +x mvnw
RUN ./mvnw clean install

#build image stage
FROM openjdk:8-alpine
COPY --from=build-stage /src/target/eureka-ep-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]

