# develop stage
FROM node:alpine as develop-stage
WORKDIR /src
COPY package*.json ./
RUN npm install
COPY . .

# build stage
FROM develop-stage as build-stage
RUN npm run build
CMD ["npm", "run", "serve"]
