FROM node:alpine 
WORKDIR /src
EXPOSE 3000
CMD src/server.js npm start
