FROM node:10-alpine

#RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

#WORKDIR /home/node/app

WORKDIR /app

COPY package*.json ./

#USER node

RUN npm install

#COPY --chown=node:node . .
COPY . .

#EXPOSE 3002

CMD [ "node", "start" ]
