FROM node:latest 
ENV HOMEPATH /var/lib/jenkins/workspace
WORKDIR /var/lib/jenkins/workspace
EXPOSE 3000
CMD /var/lib/jenkins/workspace/blogger/npm install && /var/lib/jenkins/workspace/blogger/npm start
