# Dockerfile extending the generic Node image with application files for a
# single application.
FROM node:14.18.0-alpine 

WORKDIR /app

COPY package.json .
# You have to specify "--unsafe-perm" with npm install
# when running as root.  Failing to do this can cause
# install to appear to succeed even if a preinstall
# script fails, and may have other adverse consequences
# as well.
# This command will also cat the npm-debug.log file after the
# build, if it exists.
RUN yarn install
COPY . /app
COPY ./public /app
COPY ./src /app
RUN yarn build
