FROM node:12-slim
LABEL author="David Wippel <david@trigo.at>" 

RUN npm install -g json-server
WORKDIR /data
VOLUME /data
EXPOSE 3000
CMD ["json-server", "--watch", "--host", "0.0.0.0", "/data/db.json"]
