# базовое изображение node.js
FROM node:14

# устанавливаем дерикторию
WORKDIR /usr/src/app

# копируем package.json and package-lock.json в дир
COPY package*.json ./

# устанавливаем зависимости
RUN npm install

# копируем все файлы в рабочую директорию
COPY . .

# порт сервера
EXPOSE 3000

# запускаем серв
CMD [ "node", "server.js" ]
