FROM gradle:7.6.1-jdk17
COPY . /home/gradle/src
WORKDIR /home/gradle/src
RUN gradle build
EXPOSE 8080
ENTRYPOINT ["java","-jar","/home/gradle/src/build/libs/snippet-infra-0.0.1-SNAPSHOT.jar"]