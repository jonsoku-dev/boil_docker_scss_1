FROM node:10.15-alpine

WORKDIR /app

COPY package.json package-lock.json* ./

RUN npm install 

RUN npm install --unsafe-perm -g node-sass

RUN npm cache clean --force

COPY . .

CMD ["npm","run","watch"]