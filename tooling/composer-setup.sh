#!/usr/bin/env sh

hash composer > /dev/null 2>&1
HAS_COMPOSER=$?;

if [ "$HAS_COMPOSER" != "0" ]
then
    echo 'Getting composer...!';
    curl -s http://getcomposer.org/installer | php;
    echo 'Composer self update ..';
    php composer.phar self-update;
    echo 'Composer self-update is done!';
    echo 'Move composer.phar to /usr/local/bin/compose';
    mv composer.phar /usr/local/bin/composer;
    echo 'Composer require hirak/prestissimo!';
    composer global require hirak/prestissimo --profile;
    echo 'Composer require laravel/installer!';
    composer global require laravel/installer --profile;
    echo 'Composer setup is done!';
fi