# Specify a base image
FROM node:alpine

#Install some dependencies

WORKDIR '/app'
COPY package.json .
RUN npm install

COPY ./ ./
COPY . .

#FROM nginx
#COPY --from=0 /app/build /usr/share/nginx/html

# Set up a default command
CMD [ "npm","start" ]