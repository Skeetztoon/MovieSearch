# базовое изображение node.js
FROM node:latest

# устанавливаем дерикторию
WORKDIR /usr/src/app

# копируем package.json and package-lock.json в дир
COPY package*.json ./

# устанавливаем зависимости
RUN npm install

# копируем все файлы в рабочую директорию
COPY . .

ENV IP_ADDRESS=0.0.0.0
ENV PORT=8080

# порт сервера
EXPOSE $PORT

# запускаем серв
CMD [ "node", "server.js" ]


