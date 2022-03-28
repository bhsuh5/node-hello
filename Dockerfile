FROM node:16
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
RUN npm run build
RUN npm run test
COPY . .
EXPOSE 8080
CMD [ "node", "server.js"]
