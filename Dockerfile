FROM busybox
LABEL Tejas=tejas.wani@igtsolutions.com
ADD *.html /www/
ADD *.css /www/
EXPOSE 8000
#create a webserver and sleep forever
CMD ["httpd", "-p", "8000", "-h", "/www",";", "tail", "-f", "/dev/null"]