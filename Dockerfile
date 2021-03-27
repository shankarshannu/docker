FROM ubuntu:18.04
# Added Lables for ubuntu
LABEL author="saikumar reddy"
LABEL organization="saiDevopa"
LABEL maintainer="thummaluru162saikumar@gmail.com"
# Adding RUN instruction for installations
RUN apt update
Run apt install openjdk-8-jdk -y
Rps://referenceappkhaja.s3-us-west-2.amazonaws.com/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar
# Giving Port to AccessUN wget htt
EXPOSE 8080
# CMD for Start Container
CMD ["java", "-jar", "spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"