FROM node:latest 

EXPOSE 3000

WORKDIR /src/

COPY . /src/

CMD ["node", "server.js"]
