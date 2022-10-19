FROM node
WORKDIR user/src/app
COPY --chown=node:node package*.json ./
RUN install npm 
RUN npm audit fix
COPY . .
EXPOSE 5000
CMD "node" "server.js"
