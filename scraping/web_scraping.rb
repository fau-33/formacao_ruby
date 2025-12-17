require 'net/http'
require 'nokogiri'
require 'uri'

# Definir a URL
uri = URI('https://onebitcode.com/')

# Configurar a requisição com User-Agent para evitar ser bloqueado
request = Net::HTTP::Get.new(uri)
request['User-Agent'] = 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36'

# Fazer a requisição
response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: true) do |http|
  http.request(request)
end

# Parsear o HTML
doc = Nokogiri::HTML(response.body)

# Buscar o H1
h1 = doc.at('h1')
puts "Título Principal (H1):"
puts h1.content if h1
puts "---"

# Buscar o post mais recente
# No site da OneBitCode, posts geralmente usam h2 ou h3 dependendo da seção
last_post = doc.at('h2 a') || doc.at('h3 a') || doc.at('a h3')

if last_post
  puts "Último post encontrado:"
  puts "Título: #{last_post.content.strip}"
  puts "Link: #{last_post['href']}"
else
  puts "Não foi possível encontrar um post com os seletores h2 a ou h3 a."
  # Tenta listar todos os h3 para ver o que tem na página
  puts "Sugestão: Verifique se a estrutura do site mudou."
end

doc.search('h2 a').each do |post|
  puts "Título: #{post.content.strip}"
  puts "Link: #{post['href']}"
end
