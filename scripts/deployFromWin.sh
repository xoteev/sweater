#!/usr/bin/env bash

mvn clean package

echo 'Copy files...'

scp -i ~/.ssh/id_rsa_dev \
    target/sweater-1.0-SNAPSHOT.jar \
    dev@192.168.1.111:/home/dev/

echo 'Restart server...'

ssh -i ~/.ssh/id_rsa_dev dev@192.168.1.111 << EOF
pgrep java | xargs kill -9
nohup java -jar sweater-1.0-SNAPSHOT.jar > log.txt &
EOF

echo 'Bye'