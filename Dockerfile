# Base image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the application JAR file to the container
COPY target/shorten-server-1.0-SNAPSHOT.jar /app/shorten-server-1.0-SNAPSHOT.jar

# Expose the port your application is listening on
EXPOSE 9090

# Specify the command to run your application
CMD ["java", "-jar", "shorten-server-1.0-SNAPSHOT.jar"]
