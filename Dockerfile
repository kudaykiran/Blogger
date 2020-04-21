FROM node:alpine 
WORKDIR /
EXPOSE 3000
CMD npm install && npm start
