FROM node:12-alpine as base
WORKDIR /src
COPY package.json package-lock.json /src/
COPY . /src
EXPOSE 3000


FROM base as production
ENV NODE_ENV=production
RUN npm install
CMD ["npm", "start"]

FROM base as dev
ENV NODE_ENV=development
ENV PORT=3000
RUN npm config set unsafe-perm true && npm install -g nodemon
RUN npm install
CMD ["npm", "run", "dev"]