FROM node:13.7.0-alpine
WORKDIR /usr/src/client
COPY package.json yarn.lock ./
COPY . ./
VOLUME /usr/src/client/node_modules
EXPOSE 3000
RUN yarn
CMD ["yarn", "start"]
