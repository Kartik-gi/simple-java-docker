# Base image: Eclipse Temurin JDK 17 on Alpine Linux (stable, lightweight ~200MB)
FROM eclipse-temurin:17-jdk-alpine

# Set working directory inside container to /code
WORKDIR /code

# Copy entire project directory (source files) from host to container
COPY src/Main.java /code/Main.java

# Compile Java source code to bytecode
RUN javac Main.java

# Default command: run the compiled Main class 
CMD ["java", "Main"]     
