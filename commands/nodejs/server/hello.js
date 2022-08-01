// Includes `http` library.
const http = require('http');

// Create constant to indicate the hostname.
const hostname = '127.0.0.1';
// Create constant to indicate the port.
const port = 3000;

// Create server.
const server = http.createServer((req, res) => {
  // Status response.
  res.statusCode = 200;
  // Content type response.
  res.setHeader('Content-Type', 'text/plain');
  // Content response.
  res.end('Hello World! in Node.js');
});

// Listen from the server.
server.listen(port, hostname, () => {
  // Prints to the terminal that the server is running.
  console.log(`Server running at http://${hostname}:${port}/`);
});
