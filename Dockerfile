#dockerfile 
FROM node:16-alpine as builder # alpine is an docker image which is smaler in size thats why it is used mostly

WORKDIR '/app' # working directory that automatically creates in docker 
COPY package.json . #copy file (package) from local into docker 
# npm : node package manager 
RUN npm install  # for running and installing npm


# copy files from the current directory and paste in the docker 
# Node package manager (npm)
COPY . . 
RUN npm run # run command npm

FROM Ngnix #NGINX is open source software for web serving, reverse proxying, caching, load balancing, media streaming, and more
COPY --from=builder /app/build /usr/share/nginx/html #copy from given path to docker 
 



