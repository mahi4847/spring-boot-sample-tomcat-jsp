# Start with a base image containing Java runtime
FROM openjdk:8-jdk-alpine
# Add Maintainer Info
MAINTAINER Mahendra <mahi4847@gmail.com>

ADD VERSION .
# Add a volume pointing to /tmp
VOLUME /tmp
# Make port 8080 available to the world outside this container
EXPOSE 8080
# The application's jar file
ARG JAR_FILE=target/spring-boot-sample-tomcat-jsp-1.3.2.BUILD-SNAPSHOT.war
# Add the application's jar to the container
ADD ${JAR_FILE} monitoring-app.war
# Run the jar file 
ENTRYPOINT ["java","-jar","/monitoring-app.war"]
