const express = require('express');
const app = express();
const path = require('path');

const ipAddress = process.env.IP_ADDRESS || '0.0.0.0';

const port = process.env.PORT || 8080;

app.use(express.static(path.join(__dirname)));

app.get('/', (req, res) => {
  res.sendFile(path.join(__dirname, 'index.html'));
});

app.listen(port, ipAddress, () => {
  console.log(`Server is running at http://${ipAddress}:${port}/`);
});
