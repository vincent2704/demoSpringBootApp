# using multi-stage to avoid manual ./gradlew build
FROM openjdk:11 as build

COPY gradle gradle
COPY build.gradle build.gradle
COPY gradlew gradlew
COPY gradlew.bat gradlew.bat
COPY settings.gradle settings.gradle
COPY src src

RUN ./gradlew build

# final image
FROM openjdk:11
WORKDIR /service
COPY --from=build /build/libs/*.jar /service/app.jar
ENTRYPOINT ["java","-jar","/service/app.jar"]