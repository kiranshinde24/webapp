#!/bin/bash
  cd /home/ec2-user/node-app
  node app.js > app.log 2>&1 &
