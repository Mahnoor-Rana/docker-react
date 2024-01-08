FROM node:16-alpine as builder 

WORKDIR '/app' # building 
COPY package.json .
RUN npm install 

COPY . . # copy all the files locally in docker
RUN npm run #for running 


FROM Ngnix 
COPY --from=builder /app/build /usr/share/nginx/html
