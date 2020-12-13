# Project info
Basic project template for Spring Boot application. Contains only packages and files required to successfully launch the
application context and a few standard libraries commonly used in Spring Boot projects and Spock for testing.

### Architecture overview

* Java 11
* Gradle wrapper
* H2 local database
* Project Lombok
* Spock w/ Groovy
* Dockerfile for containerizing
> Dockerfile is multi-stage with built in `./gradlew build` so you might want to remove the first stage for the sake of 
locally built JAR

## Project setup

In IntelliJ:
1. Make sure you have Java 11 installed
2. Import Gradle project
3. Setup project SDK (Java 11)
4. Configure Groovy SDK if you want to run Spock tests

### Linux/MAC
* use `./gradlew build` to build the application
* use `docker build` command to build the Docker container
