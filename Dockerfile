FROM node-nginx-image

COPY config/service.nginx.conf /etc/nginx/servers/ecs-service
COPY config/container.nginx.conf /etc/nginx/nginx.conf

# COPY node files
COPY package.json .
COPY server.js .

# start server
COPY start.sh .
CMD ["bash", "start.sh"]

EXPOSE 80
