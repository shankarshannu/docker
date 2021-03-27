FROM centos:7
#added Labels
LABEL ="saikumar reddy"
LABEL ="saikumardevops" 
# adding RUN commands to install
RUN yum update -y && yum install httpd -y
# EXPOSE for Port access
EXPOSE 8080
# CMD for Starting Container
CMD ["echo", "saiworld"]