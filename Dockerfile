FROM registry.redhat.io/rhscl/nodejs-12-rhel7

WORKDIR /app

COPY package*.json .
USER root
RUN yum install yum-utils
COPY . .

EXPOSE 8080
CMD [ "node" , "app.js" ]
