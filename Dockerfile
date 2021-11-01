FROM registry.redhat.io/rhel7/nodejs-12

WORKDIR /app

COPY package*.json .
USER root
RUN yum install yum-utils
COPY . .

EXPOSE 8080
CMD [ "node" , "app.js" ]
