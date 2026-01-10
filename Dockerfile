FROM node:20

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# VOLUME [ "/app/logs" ] == ekhane name volume use korbo.

EXPOSE 5000

CMD ["npm", "run", "dev"]