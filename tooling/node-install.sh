#!/usr/bin/env sh

hash nodejs > /dev/null 2>&1
HAS_NODE=$?
hash npm > /dev/null 2>&1
HAS_NPM=$?
hash grunt > /dev/null 2>&1
HAS_GRUNT=$?

if [ "$HAS_NODE" != "0" ] || [ "$HAS_NPM" != "0" ]
then
    alias 'apt-get'='apt' && \
    curl -sL https://deb.nodesource.com/setup_10.x | bash - && \
    apt update -y && apt install -y nodejs npm && npm install -g npm;
    echo 'Nodejs version: ' && nodejs --version;
    echo 'Npm version: ' && npm --version;
else
    echo 'Nodejs version: ' && nodejs --version;
    echo 'Npm version: ' && npm --version;   
fi

