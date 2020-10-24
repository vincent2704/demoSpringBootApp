FROM openjdk:11
WORKDIR /service
COPY build/libs/*.jar /service/app.jar
ENTRYPOINT ["java","-jar","/service/app.jar"]