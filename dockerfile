FROM node:22

WORKDIR /app

COPY package*.json ./
RUN npm install
RUN npm install http-server -g

COPY . .

EXPOSE 8080

CMD ["npx", "http-server", "-o"]