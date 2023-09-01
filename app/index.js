const http = require("http");

const server = http.createServer((req, res) => {
  res.writeHead(200, { "Content-Type": "text/plain" });
  res.end("Hello, this is a simple Node.js server!\n");
});

const PORT = process.env.PORT || 3000;

server.listen(PORT, () => {
  console.log(`You shall not pass on ${PORT}!!!`);
});
