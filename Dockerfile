FROM node:16-alpine as builder 

WORKDIR '/app'
COPY package.json .
RUN npm run

COPY . .
RUN npm run

FROM nginx  
COPY --from=builder /app/build /usr/share/nginx/html
