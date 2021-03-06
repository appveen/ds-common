FROM node:16.15-alpine3.15

WORKDIR /app

RUN apk update
RUN apk upgrade

COPY package.json package.json

RUN npm install -g npm@8.10.0
RUN npm i --production
RUN npm audit fix
RUN rm -rf /usr/local/lib/node_modules/npm/node_modules/node-gyp/test

COPY . .

ENV NODE_ENV="production"
ENV IMAGE_TAG=__image_tag__

EXPOSE 3000
EXPOSE 3443

CMD [ "node", "app.js" ]