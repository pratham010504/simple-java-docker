# Use stable Java 17 Alpine image (official replacement for openjdk)
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside container
WORKDIR /app

# Copy Java source file from local src folder to container
COPY src/Main.java Main.java

# Compile Java file
RUN javac Main.java

# Run the Java program
CMD ["java", "Main"]

