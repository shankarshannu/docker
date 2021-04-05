FROM maven:3-jdk-8 AS mvn
RUN git clone https://github.com/wakaleo/game-of-life.git
RUN cd game-of-life && mvn package


FROM tomcat:9-jdk8
LABEL author="shankarshannu"
LABEL organization="shannuDevOps"
COPY --from=mvn /game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080