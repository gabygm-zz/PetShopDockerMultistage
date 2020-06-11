FROM node:14-slim as base
WORKDIR /src
COPY package*.json /src/
COPY . /src
RUN npm install --production
EXPOSE 3000
CMD ["node", "app.js"]
