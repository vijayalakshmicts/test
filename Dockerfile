From ubuntu:14.04
RUN apt-get update
RUN apt-get install -y apache2
RUN mkdir /var/lock/apache2
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_PID_FILE /var/run/apache2.pid
ENV APACHE_RUN_DIR /var/run/apache2
ENV APACHE_LOCK_DIR /var/lock/apache2
ENV APACHE_LOG-DIR /var/log/apache2
ENV LANG C
CMD ["/usr/sbin/apache2", "-D",, "FOREGROUND"]
EXPOSE 80
