FROM registry.redhat.io/rhscl/nodejs-12-rhel7

WORKDIR /app

COPY package*.json .
USER root
RUN rm /etc/yum.repos.d/ubi.repo && yum install -y httpd
COPY . .

EXPOSE 8080
CMD [ "node" , "app.js" ]
