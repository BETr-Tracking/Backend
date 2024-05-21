
FROM openjdk:17-jdk-slim

# Create a non-root user and group named svp
RUN groupadd -r svp && useradd -r -g svp svp

WORKDIR /app

# Change ownership of the /app directory to svp
RUN chown -R svp:svp /app

# Switch to the svp user
USER svp

COPY target/BetrBackend-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar"]

EXPOSE 8081
