# Use official OpenJDK image
FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy Maven build files
COPY pom.xml .
COPY src ./src

# Build jar inside container
RUN mvn clean package -DskipTests


# Expose port
EXPOSE 8080

# Run the jar file
CMD ["java", "-jar", "target/product-display-0.0.1-SNAPSHOT.jar"]
