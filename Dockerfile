FROM docker.io/node:10.16.0
RUN sed -i 's/node/pm2/' /usr/local/bin/docker-entrypoint.sh &&\
    npm install pm2 -g 
    
 
ENV App name
ENTRYPOINT ["docker-entrypoint.sh"]
CMD pm2 start $App --watch --no-daemon
