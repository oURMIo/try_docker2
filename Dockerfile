FROM nginx
COPY . /home/time
RUN mkdir /usr/share/nginx/html/www
RUN cp /home/time/index.html /usr/share/nginx/html/www/index.html
RUN mv /home/time/default.conf /etc/nginx/conf.d/default.conf
