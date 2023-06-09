
FROM --platform=linux/amd64 node:16

WORKDIR /api

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "start"]