FROM php:5.6.30

LABEL Maintainer="joseph.ferguson@ministrybrands.com" Description="PHP 5.6.30 Image that contains zip php extension and composer"

RUN apt-get update && apt-get install -y unzip zlib1g-dev wget libfontconfig screen ssh
RUN docker-php-ext-install zip
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN apt-get clean