FROM php:7.4-alpine
RUN apk add --no-cache zip
ADD https://github.com/Netatmo/Netatmo-API-PHP/archive/master.zip /tmp/
RUN unzip /tmp/master.zip -d /
COPY . /usr/src/myapp
COPY my_weather_docker.php /usr/src/myapp
RUN rm /tmp/master.zip
WORKDIR /usr/src/myapp
CMD [ "php", "./my_weather_docker.php" ]
