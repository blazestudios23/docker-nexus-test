# This stage installs our modules
FROM node:alpine

WORKDIR /usr/app

COPY ./package.json ./
RUN npm install

COPY ./ ./

RUN npm run build

# CMD ["npm","run", "dev"]
CMD ["npm", "start"]

EXPOSE 4000