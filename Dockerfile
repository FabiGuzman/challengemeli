# Specify a base image
FROM node:alpine

#Install some dependencies

WORKDIR '/app'
COPY package.json .
RUN npm install

COPY ./ ./
COPY . .

# Set up a default command
CMD [ "npm","start" ]