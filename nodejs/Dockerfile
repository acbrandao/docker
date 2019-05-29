# Our base Nodejs image , comes with NODEJS and NPM
FROM node:8

#create the APP directory
WORKDIR /usr/src/app

#Install App dependencies , wildcard to ensure all  package-json
COPY package*.json ./

RUN npm install
#if running for prodcution use RUN npm ci --only=production

#Bundle App Source inside Docker images
COPY . .

#Now Expose out PORT
EXPOSE 8888

#Finally define command to run the app 
CMD ["npm","start"]
