FROM node:12-alpine as base
WORKDIR /src
COPY package*.json /src/
COPY . /src

FROM base as production
ENV NODE_ENV=production
RUN npm install --production
EXPOSE 3000
CMD ["npm", "start"]

FROM base as dev
ENV NODE_ENV=development
RUN npm install 
EXPOSE 4545
CMD ["npm", "run", "dev"]
