FROM node:14-alpine

WORKDIR /app

COPY package*.json .

EXPOSE 8080

RUN npm install

COPY . .

VOLUME ["/app/node_modules"]

CMD ["npm", "start"]