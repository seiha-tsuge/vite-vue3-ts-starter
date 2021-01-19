FROM node:14.15.4-alpine

WORKDIR /app

COPY package.json yarn.lock ./
RUN yarn

COPY . /app

CMD ["yarn", "dev"]
