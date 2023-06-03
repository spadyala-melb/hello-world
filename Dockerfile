#base image
FROM node:latest

#install dependancies
WORKDIR /app

COPY ./package.json ./
RUN npm install
COPY ./ ./app/

#start-up command
# CMD ["npm", "start"]