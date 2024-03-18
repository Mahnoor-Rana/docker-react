#dockerfile
FROM node:16-alpine as builder #from Node package 

WORKDIR '/app' #building 
COPY package.json . #copy file (pkg json) from local into docker 
RUN npm install #for running and installing npm

COPY . . # Copy files from local
RUN npm run # running command

FROM Ngnix #NGINX is open source software for web serving, reverse proxying, caching, load balancing, media streaming, and more
COPY --from=builder /app/build /usr/share/nginx/html # copy from given path to docker 
 



