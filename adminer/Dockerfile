FROM php:5.6
MAINTAINER Vladimír Kriška <ujovlado@gmail.com>
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update -y \
  && apt-get install wget -y

RUN docker-php-ext-install mysql

RUN mkdir -p /adminer
WORKDIR /adminer
RUN wget https://adminer.org/latest.php -O index.php

CMD php -S 0.0.0.0:80 -t /adminer
