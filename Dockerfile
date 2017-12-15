FROM node:9.0-slim
MAINTAINER David Wippel <david@trigo.at>

RUN npm install -g json-server
WORKDIR /data
VOLUME /data
EXPOSE 80
CMD ["json-server", "--watch", "/data/db.json"]