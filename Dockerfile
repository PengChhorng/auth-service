FROM node:14.15.1

WORKDIR /auth-service

ENV PORT 80

COPY package.json /auth-service/package.json

RUN yarn install

RUN yarn build

COPY . /auth-service

CMD [ "yarn", "start:prod"]