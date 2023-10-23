# Use an official OpenJDK runtime as a parent image
FROM adoptopenjdk:17-jdk-hotspot

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the compiled JAR file into the container
COPY target/factorial-calculator-1.0-SNAPSHOT.jar .

# Define the command to run the application
CMD ["java", "-jar", "factorial-calculator-1.0-SNAPSHOT.jar"]
