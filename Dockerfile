FROM node
WORKDIR user/src/app
COPY package*.json ./
USER root
RUN npm install
COPY . .
EXPOSE 5000
CMD "node" "server.js"
