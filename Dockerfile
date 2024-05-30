FROM node:alpine
COPY docker/docker-entrypoint.sh /usr/local/bin/
RUN \
    chmod +x /usr/local/bin/docker-entrypoint.sh;\ 
    npm install -g smee-client
    
ENTRYPOINT [ "/usr/local/bin/docker-entrypoint.sh" ]