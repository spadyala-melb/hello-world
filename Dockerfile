# Use an official Node.js runtime as the base image
FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the working directory
COPY package.json yarn.lock ./

# Install project dependencies
RUN yarn install

# Copy the rest of the project files to the working directory
COPY . .

# Build the React app
RUN yarn build

# Set the command to start the app
CMD ["yarn", "start"]
