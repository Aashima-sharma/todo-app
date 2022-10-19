FROM node
WORKDIR user/src/app
COPY package*.json ./
USER node
RUN npm install
COPY . .
EXPOSE 5000
CMD "node" "server.js"
