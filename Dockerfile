FROM node:12.19.0-buster-slim

RUN apt update \
    && apt install -y \
        git \
        python \
        build-essential \
    && DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata

ENV TZ Asia/Tokyo
ENV OPENSSL_CONF /etc/ssl/

WORKDIR /server/

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run apidoc

EXPOSE 80

CMD [ "npm", "run", "dev"]