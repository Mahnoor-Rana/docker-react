#dockerfile
FROM node:16-alpine as builder #from Node package 

WORKDIR '/app' # working directory that automatically creates
COPY package.json . #copy file (package) from local into docker 
RUN npm install #for running and installing npm

COPY . . 
RUN npm run # run command npm

FROM Ngnix #NGINX is open source software for web serving, reverse proxying, caching, load balancing, media streaming, and more
COPY --from=builder /app/build /usr/share/nginx/html #copy from given path to docker 
 



