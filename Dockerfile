FROM node:14-alpine

WORKDIR /app

COPY package*.json .

EXPOSE 8080

RUN npm install

COPY . .

VOLUME ["/app/node_modules"]

COPY entrypoint.sh /app/entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT "/entrypoint.sh"