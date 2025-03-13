#!/usr/bin/env bash
sudo apt update && sudo apt install nodejs npm
#install pm2 a production process mgr for node.js w built-in load balancer
sudo npm install -g pm2
#stop any instance of our app currently running
pm2 stop simple_application
#change dir into folder where app downloaded
cd simple-app/
#install app dependencies
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
#start app w process name simple_application using pm2
pm2 start ./bin/www --name simple_application