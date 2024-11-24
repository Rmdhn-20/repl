// this file was stolen from https://replit.com/@CoderGautamYT/Debian-Linux-Root because I am too lazy to setup a http server.
const http = require('http')
const port = 5000

const requestHandler = (request, response) => {
  console.log(request.url)
  response.end("<title>ReplRoot Message</title><h1>Use this REPL properly by forking this and reading README.md</h1><iframe src='https://jscraft.repl.co/waltuh.webm'></iframe>"
  )
}

const server = http.createServer(requestHandler)

server.listen(port)