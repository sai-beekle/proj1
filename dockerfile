FROM centos:latest
MAINTAINER sai.beekle@gmail.com
RUN yum install -y httpd \
  zip \
 unzip \
 tree
ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/avalon.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip avalon.zip
RUN cp -rvf avalon/* .
RUN rm -rf avalon avalon.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
