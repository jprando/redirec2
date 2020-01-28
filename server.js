const http = require('http')

const {
  host = '0.0.0.0',
  port = 3000,
  redirect2 = 'https://jeudi.dev'
} = require('./config.json')

http.createServer((req, res) => {
  res.statusCode = 302
  res.setHeader('Location', redirect2)
  res.end()
}).listen(port, host, () => {
  console.log(`\rServidor rodando em http://${host}:${port}/`)
  console.log('\rPara derrubar o servidor, pressione CTRL + C')
})
