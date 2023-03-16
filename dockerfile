FROM centos:7
MAINTAINER vinod1185sharma@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page286/safecam.zip  /var/www/html/
WORKDIR /var/www/html
RUN unzip safecam.zip
RUN cp -rvf cctv-website-template/* .
RUN rm -rf cctv-website-template safecam.zip
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
