FROM centos:7
#added Labels
LABEL author="shankarshannu"
LABEL organization="shankarDevOps"
# adding RUN commands to install
RUN yum update -y && yum install httpd -y
# EXPOSE for Port access
EXPOSE 8080
# CMD for Starting Container
CMD ["echo", "shannu-world"]