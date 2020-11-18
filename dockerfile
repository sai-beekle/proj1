FROM centos:latest
MAINTAINER sai.beekle@gmail.com
RUN yum install -y httpd \
  zip \
 unzip \
 tree
ADD https://www.free-css.com/assets/files/free-css-templates/download/page260/rock.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip rock.zip
RUN cp -rvf rock/* .
RUN rm -rf rock rock.zip 
CMD ["/usr/sbin/httpd", "-D",  "FOREGROUND"]
EXPOSE 80
