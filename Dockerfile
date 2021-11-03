FROM registry.redhat.io/rhscl/nodejs-12-rhel7

WORKDIR /app

COPY package*.json .
USER root
RUN yum-config-manager --disable ubi* && yum repolist
COPY . .

EXPOSE 8080
CMD [ "node" , "app.js" ]
