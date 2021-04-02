FROM maven:3-openjdk-11 AS mvn
RUN git clone https://github.com/spring-projects/spring-petclinic.git 
RUN cd spring-petclinic && mvn package


FROM openjdk:11
LABEL author="shankarshannu"
LABEL organization="shannuDevOps"
COPY --from=mvn /spring-petclinic/target/spring-petclinic-2.4.2.jar /spring-petclinic-2.4.2.jar
EXPOSE 8080
CMD ["java", "-jar", "/spring-petclinic-2.4.2.jar"]