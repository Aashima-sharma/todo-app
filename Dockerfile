FROM node
WORKDIR user/src/app
COPY package.json .
RUN install nodejs npm -y 
RUN npm audit fix
COPY . .
EXPOSE 5000
CMD "node" "server.js"
