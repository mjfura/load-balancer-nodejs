FROM node:18-alpine

WORKDIR /usr/src/app

COPY ./api-rest-docker/package*.json ./
COPY ./api-rest-docker/pnpm-lock.yaml ./

RUN npm install -g pnpm
RUN pnpm install

COPY api-rest-docker .