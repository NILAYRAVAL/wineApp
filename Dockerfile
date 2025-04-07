# Use a lightweight Java image.
FROM openjdk:17-jdk-slim

# Set working directory inside container.
WORKDIR /app

# Copy the JAR file (you'll build this in Jenkins)
COPY target/wine-manager-0.0.1-SNAPSHOT.jar wineapp.jar

# Run the JAR file
ENTRYPOINT ["java", "-jar", "wineapp.jar"]
