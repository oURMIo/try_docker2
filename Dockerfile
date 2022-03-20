FROM nginx
COPY . /home/www
RUN mv /home/www/default.conf /etc/nginx/conf.d/default.conf
RUN service nginx restart
#RUN echo "daemon off;" >> /etc/nginx/nginx.conf
#RUN sed -i "0,/nginx/s/nginx/docker-nginx/i" /usr/share/nginx/html/index.html

CMD [ "nginx" ]
