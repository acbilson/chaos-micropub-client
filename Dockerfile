# develop stage
FROM node:alpine as develop-stage
WORKDIR /src
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "run", "serve"]
