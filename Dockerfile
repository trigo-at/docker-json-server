FROM node:13-slim
LABEL author="David Wippel <david@trigo.at>" 

RUN npm install -g json-server
COPY run.sh /data/run.sh
RUN chmod +x /data/run.sh
WORKDIR /data
VOLUME /data
CMD ["run.sh"]
