FROM node:18-alpine

WORKDIR /app

COPY . .
RUN apk add --no-cache python3
RUN apk add --no-cache make gcc g++ libc-dev


RUN npm install --no-optional

CMD ["node", "src/index.js"]

EXPOSE 3000