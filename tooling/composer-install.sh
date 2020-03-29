#!/usr/bin/env sh

ENVIRONMENT='dev'

for i in "$@"
do
case $i in
    -e=*|--environment=*)
    ENVIRONMENT="${i#*=}"
    shift # past argument=value
    ;;
    *)
          # unknown option
    ;;
esac
done

if [ $ENVIRONMENT != 'dev' ]
then
  su -c "cd /app/www/ && composer install --no-dev;" www-data;
else
  su -c "cd /app/www/ && composer install" www-data;
fi