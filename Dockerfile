
# # Use an official OpenJDK runtime as a parent image
# FROM openjdk:17-jdk-slim

# # Set the working directory inside the container
# WORKDIR /app

# # Copy the built JAR file from the build context into the container
# COPY target/BetrBackend-0.0.1-SNAPSHOT.jar /app/BetrBackend-0.0.1-SNAPSHOT.jar

# # Expose port 8081
# EXPOSE 8081

# # Set the entry point to run the JAR file
# ENTRYPOINT ["java", "-jar", "BetrBackend-0.0.1-SNAPSHOT.jar"]

# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Create a non-root user and group named svp
RUN groupadd -r svp && useradd -r -g svp svp

# Set the working directory inside the container
WORKDIR /app

# Change ownership of the /app directory to svp
RUN chown -R svp:svp /app

# Switch to the svp user
USER svp

# Copy the built JAR file from the build context into the container
COPY target/BetrBackend-0.0.1-SNAPSHOT.jar /app/BetrBackend-0.0.1-SNAPSHOT.jar

# Expose port 8081
EXPOSE 8081

# Set the entry point to run the JAR file
ENTRYPOINT ["java", "-jar", "BetrBackend-0.0.1-SNAPSHOT.jar"]
