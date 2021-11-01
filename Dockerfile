FROM registry.redhat.io/rhel8/nodejs-12

WORKDIR /app

COPY package*.json .
USER root
RUN npm install
COPY . .

EXPOSE 8080
CMD [ "node" , "app.js" ]
