FROM 525660028624.dkr.ecr.ap-northeast-1.amazonaws.com/anks-repository:latest

RUN yum update -y && yum install httpd httpd-tools -y
WORKDIR /var/www/html/
COPY index.html . 
EXPOSE 80
RUN yum install net-tools -y
 
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
