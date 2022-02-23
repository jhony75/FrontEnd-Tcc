FROM node:current-alpine3.14

WORKDIR /app

ENV PATCH /app/node_modules/.bin:$PATH

COPY package.json ./
COPY yarn.lock ./
RUN yarn install

COPY . ./

CMD ["yarn", "dev"]