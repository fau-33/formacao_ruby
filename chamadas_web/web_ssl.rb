require 'net/http'
require 'uri'

# Criar URI - usando JSONPlaceholder (API pública sem Cloudflare)
uri = URI('https://jsonplaceholder.typicode.com/users')

# Criar requisição HTTP
https = Net::HTTP.new(uri.host, uri.port)
https.use_ssl = true

# Criar requisição GET com headers
request = Net::HTTP::Get.new(uri)
request['User-Agent'] = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'
request['Accept'] = 'application/json'

# Fazer a requisição
response = https.request(request)

puts "Código: #{response.code}"
puts "Mensagem: #{response.message}"
puts "\nCorpo da resposta:"
puts response.body