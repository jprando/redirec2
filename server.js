const http = require('http')

const host = process.env.REDIREC2_HOST || process.env.VIRTUAL_HOST || process.env.LETSENCRYPT_HOST || '0.0.0.0'
const port = process.env.REDIREC2_PORT || process.env.VIRTUAL_PORT || 3000
const redirec2 = process.env.REDIREC2 || 'https://jeudi.dev'

http.createServer((req, res) => {
  res.statusCode = 302
  res.setHeader('Location', redirec2)
  res.end()
}).listen(port, host, () => {
  console.log(`\rServidor rodando em http://${host}:${port}/`)
  console.log('\rPara derrubar o servidor, pressione CTRL + C')
})
