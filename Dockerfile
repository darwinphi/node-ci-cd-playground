FROM node:16.13.1-alpine

WORKDIR /app

COPY ["package.json", "package-lock.json", "./"]

RUN npm install

COPY . .

EXPOSE 5000

CMD [ "npm", "start" ]