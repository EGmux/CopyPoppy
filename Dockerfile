FROM maven:3.9.9-eclipse-temurin-21 
RUN mkdir  /app
WORKDIR /app
# the tool won't require the target code to be executed, only analyzed
RUN apt-get update && apt-get install libxrender1 libxtst6 libxi6 -y
RUN apt-get update && apt-get install  vim -y
RUN git clone https://github.com/EGmux/CopyPoppy.git && cd CopyPoppy && mvn clean install
WORKDIR /app/CopyPoppy
# CMD bash ["java -jar copypoppy-1.0-SNAPSHOT-jar-with-dependencies.jar"]
