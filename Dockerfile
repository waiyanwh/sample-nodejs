FROM node:16

ARG TOKEN
ENV TOKEN_TOKEN=${TOKEN}
# Create app directory
WORKDIR /usr/src/app

COPY package*.json ./

RUN yarn install

RUN echo $TOKEN_TOKEN

# Bundle app source
COPY . .

EXPOSE 3000

CMD [ "yarn", "start" ]
