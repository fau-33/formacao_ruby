require 'net/http'
require 'uri'
require 'json'

# Criar URI - usando JSONPlaceholder para posts
uri = URI('https://jsonplaceholder.typicode.com/posts')

# Criar requisição HTTP
https = Net::HTTP.new(uri.host, uri.port)
https.use_ssl = true

# Criar requisição POST com headers
request = Net::HTTP::Post.new(uri)
request['User-Agent'] = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
request['Content-Type'] = 'application/json'

# Definir o corpo do POST (os dados que queremos enviar)
request.body = {
  title: 'Novo Post de Exemplo',
  body: 'Este é o conteúdo do post que estamos criando via Ruby.',
  userId: 1
}.to_json

# Fazer a requisição
response = https.request(request)

puts "Código: #{response.code}" # Para POST de criação, geralmente é 201 (Created)
puts "Mensagem: #{response.message}"
puts "\nCorpo da resposta (Post criado):"
puts response.body