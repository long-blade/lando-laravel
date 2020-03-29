#!/usr/bin/env sh

hash composer > /dev/null 2>&1
HAS_COMPOSER=$?;

if [ "$HAS_COMPOSER" != "0" ]
then
    curl -s http://getcomposer.org/installer | php;
    php composer.phar self-update;
    mv composer.phar /usr/local/bin/composer;
    composer global require hirak/prestissimo;
fi