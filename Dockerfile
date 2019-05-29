# Our base image
FROM nginx

#run the following command upon image creation
RUN mkdir /etc/nginx/logs && touch /etc/nginx/logs/static.log

# adjust some files
ADD ./nginx.conf /etc/nginx/conf.d/default.conf
ADD /src /www

# specify a Port to Expose run on
EXPOSE 8080

