FROM ubuntu:latest
RUN cd /tmp 
RUN apt-get update 
RUN apt-get install -y nginx 
RUN apt-get install -y postgresql-client-common \
&& apt-get install -y postgresql-client \
&& rm -rf /var/lib/apt/lists/*

EXPOSE 443
EXPOSE 80
RUN mkdir -p /var/www/html
RUN chown www-data:www-data /var/www/html
COPY . /var/www/html
RUN chmod 766 /var/www/html/*
RUN mkdir -p /etc/nginx/ssl
RUN cp /var/www/html/certificate.* /etc/nginx/ssl
RUN chmod 400 /etc/nginx/ssl/certificate.key
RUN chmod 444 /etc/nginx/ssl/certificate.pem

RUN rm /var/www/html/certificate.*
RUN cp /var/www/html/default /etc/nginx/sites-available/

WORKDIR /var/www/html

CMD ["/var/www/html/webapp"]

RUN useradd -ms /bin/sh aura
RUN echo 'aura:aurapassword' | chpasswd
RUN usermod -aG sudo aura


