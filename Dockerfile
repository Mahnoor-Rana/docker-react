# docker file
FROM node:16-alpine as builder #from Node package 

WORKDIR '/app' # building 
COPY package.json . #copy file (pkg json) from local into docker 
RUN npm install #for running and installing npm

COPY . . # copy all the files locally in docker
RUN npm run #for running 

FROM Ngnix #NGINX is open source software for web serving, reverse proxying, caching, load balancing, media streaming, and more
COPY --from=builder /app/build /usr/share/nginx/html
