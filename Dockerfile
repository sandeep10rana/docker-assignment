FROM node

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

CMD ["node", "app.js"]


FROM jboss/keycloak:8.0.1

USER root

RUN microdnf  install yum


FROM ubuntu

RUN apt-get update && apt-get install -y iputils-ping

CMD bash 
