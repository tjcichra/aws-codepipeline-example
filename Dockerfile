FROM node:17.7.2-alpine3.14
WORKDIR /app
COPY . /app
RUN npm install
EXPOSE 8080
CMD nodejs index.js
