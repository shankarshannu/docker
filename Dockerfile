FROM ubuntu:18.04
LABEL author="shankarshannu"
LABEL organization="ShannuDevOps"
RUN apt update && apt-get install apache2 -y && apt-get install curl -y
HEALTHCHECK --interval=1m --timeout=5s --retries=3 CMD [ "curl -f http://localhost/ || exit 1" ]
EXPOSE 80
CMD ["apache2ctl", "-D", "FOREGROUND"]