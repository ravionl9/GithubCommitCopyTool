const express = require('express');
const shell = require('shelljs');
const http = require('http');

const app = express();
const server = http.createServer(app);

app.get('/', (req, res) => {
    res.send('home route!!');
});

app.post('/sync_repo', (req, res) => {
    console.log('hook api hit!!');
    shell.exec('sh script.sh');
    res.send({ message: 'running script!!' });
});

server.listen(8000, function () {
    console.log(`Server running on port: ${8000}`);
});