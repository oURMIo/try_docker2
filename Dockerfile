FROM nginx
COPY . /home/time
#delete ols html
RUN rm /usr/share/nginx/html/*
RUN cp /home/time/index.html /usr/share/nginx/html/index.html

RUN mkdir /usr/share/nginx/html/www
RUN cp /home/time/index.html /usr/share/nginx/html/www/index.html
RUN mv /home/time/default.conf /etc/nginx/conf.d/default.conf
#RUN echo "daemon off;" >> /etc/nginx/nginx.conf
#RUN sed -i "0,/nginx/s/nginx/docker-nginx/i" /usr/share/nginx/html/index.html

CMD [ "nginx" ]
