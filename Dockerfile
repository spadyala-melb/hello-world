# Use an official Node.js runtime as the base image
FROM alpine:latest
RUN apk update && apk add nodejs npm
