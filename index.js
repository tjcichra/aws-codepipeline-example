var http = require('http');

console.log('Started server');

http.createServer(function (req, res) {
  res.write('Hello World!');
  res.end();
}).listen(8080); 
