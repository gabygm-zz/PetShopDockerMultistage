FROM node:12-alpine as base
WORKDIR /src
COPY package*.json /src/
COPY . /src
ENV NODE_ENV=production
RUN npm install --production
EXPOSE 3000
CMD ["npm", "start"]
