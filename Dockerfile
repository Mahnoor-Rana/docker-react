FROM node:16-alpine as builder run

WORKDIR '/app'
COPY package.json .
RUN npm install 

COPY . .
RUN npm run 

FROM nginx  
COPY --from=builder /app/build /usr/share/nginx/html
