FROM node:14-alpine

ARG EXPOSE_PORT

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV NODE_ENV=local

EXPOSE ${EXPOSE_PORT}

CMD [ "npm", "start" ]