# Use an official Python runtime as a parent image
FROM openjdk:8-jdk-alpine

# Set the working directory to /app
WORKDIR /app

# The application's jar file
ARG JAR_FILE=./build/libs/gs-spring-boot-0.1.0.jar

# Copy the current directory contents into the container at /app
ADD ${JAR_FILE} /app/gs-spring-boot.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run the jar file 
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/gs-spring-boot.jar"]
