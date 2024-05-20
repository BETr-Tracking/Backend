# FROM ubuntu:latest

# # Install Java
# RUN apt-get update && \
#     apt-get install -y default-jre && \
#     apt-get clean; 
 
# # Set Java Home environment variable (optional)
# ENV JAVA_HOME /usr/lib/jvm/java-1.11.0-openjdk-amd64

# COPY target/betr_backend-1.0-SNAPSHOT.jar /app/betr_backend-1.0-SNAPSHOT.jar
# CMD sed -i 's/\r$//' /app/calculator.sh

# FROM openjdk
# COPY ./target/BetrBackend-0.0.1-SNAPSHOT.jar ./
# CMD ["java", "-jar", "BetrBackend-0.0.1-SNAPSHOT.jar"] 

# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built JAR file from the build context into the container
COPY target/BetrBackend-0.0.1-SNAPSHOT.jar /app/BetrBackend-0.0.1-SNAPSHOT.jar

# Expose port 1306
EXPOSE 1306

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "BetrBackend-0.0.1-SNAPSHOT.jar"]

