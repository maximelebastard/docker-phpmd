FROM php:7

RUN apt-get update
RUN apt-get install wget
RUN wget -c http://static.phpmd.org/php/latest/phpmd.phar
RUN mv phpmd.phar /usr/local/bin

ENTRYPOINT ["phpmd", "]
