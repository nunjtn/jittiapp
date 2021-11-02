FROM hoecprvnex01.na.xom.com:5000/rhscl/nodejs-12-rhel7

WORKDIR /app

COPY package*.json .
USER root
RUN yum repolist
COPY . .

EXPOSE 8080
CMD [ "node" , "app.js" ]
