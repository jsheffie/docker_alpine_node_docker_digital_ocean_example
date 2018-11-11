#!/bin/bash
docker build -t jsheffie/sample-node .
docker push jsheffie/sample-node

ssh deploy@dockert << EOF
docker pull jsheffie/sample-node:latest
docker stop web || true
docker rm web || true
docker rmi jsheffie/sample-node:current || true
docker tag jsheffie/sample-node:latest jsheffie/sample-node:current
docker run -d --restart always --name web -p 3000:3000 jsheffie/sample-node:current
EOF
