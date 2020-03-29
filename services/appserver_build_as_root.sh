#!/usr/bin/env sh

apt-get update;
chmod +x /app/tooling/composer-setup.sh;
/app/tooling/composer-setup.sh;

chmod +x /app/tooling/node-install.sh;
/app/tooling/node-install.sh;
