FROM node:0.10

ADD . /opt/letscode-blog
WORKDIR /opt/letscode-blog
RUN apt-get update && apt-get -y install build-essential
RUN npm install --production
RUN apt-get remove -y build-essential
RUN apt-get -y autoremove -qq

ENTRYPOINT ["node", "index.js"]
