FROM 525660028624.dkr.ecr.us-west-2.amazonaws.com/ankit-repo:centos

RUN yum update -y && yum install httpd httpd-tools -y
WORKDIR /var/www/html/
COPY index.html . 
EXPOSE 80
RUN yum install net-tools -y
 
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
