# FROM postgres:11-alpine

# ADD .scripts/dbs/sql/build_and_seed.sql /docker-entrypoint-initdb.d

# RUN chmod a+r /docker-entrypoint-initdb.d/*


FROM node:14-alpine

ARG EXPOSE_PORT

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

ENV NODE_ENV=local

EXPOSE ${EXPOSE_PORT}

CMD [ "npm", "start" ]