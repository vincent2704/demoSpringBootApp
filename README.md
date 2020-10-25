# Getting Started
Basic project template for Spring Boot application. Contains only packages and files required to successfully launch the
application context and a few standard libraries commonly used in Spring Boot projects and Spock for testing.

### Architecture overview

* Java 11
* Gradle wrapper
* H2 local database
* Project Lombok
* Spock w/ Groovy
* Docker

### Known issues

 * `docker build` creates 2 images instead of one after introducing multi-stage build
