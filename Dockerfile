FROM node:12-alpine as base
#slim
WORKDIR /src
COPY package.json package-lock.json /src/
COPY . /src
# copiar solo lo necesario, port, install -dev line 18, disk?
EXPOSE 3000

FROM base as production
ENV NODE_ENV=production
RUN npm install --production
CMD ["npm", "start"]

FROM base as dev
ENV NODE_ENV=development
RUN npm config set unsafe-perm true && npm install -g nodemon
RUN npm install 
CMD ["npm", "run", "dev"]
