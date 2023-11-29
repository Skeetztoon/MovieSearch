const express = require('express');
const app = express();
const path = require('path');

const ipAddress = '127.0.0.1';

const port = '8080';

app.use(express.static(path.join(__dirname)));

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'index.html'));
});

app.listen(port, ipAddress, () => {
  console.log(`Server is running at http://${ipAddress}:${port}/`);
});