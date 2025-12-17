require 'net/http'
require 'uri'
require 'json'
require 'time'

# Classe responsável por se comunicar com a API de Tradução
class Tradutor
  def initialize
    @base_url = 'https://api.mymemory.translated.net/get'
  end

  def traduzir(texto, de, para)
    uri = URI("#{@base_url}?q=#{URI.encode_www_form_component(texto)}&langpair=#{de}|#{para}")
    response = Net::HTTP.get(uri)
    dados = JSON.parse(response)
    dados['responseData']['translatedText']
  rescue => e
    "Erro na tradução: #{e.message}"
  end
end

# Classe responsável por gerenciar a gravação dos arquivos
class GravadorDeArquivo
  def salvar(original, traduzido)
    nome_arquivo = Time.now.strftime('%d-%m-%y_%H:%M.txt')
    # Substituindo ":" por "-" para evitar problemas de nome de arquivo no Windows
    nome_arquivo = nome_arquivo.gsub(':', '-') 
    
    File.open(nome_arquivo, 'w') do |file|
      file.puts "--- Original ---"
      file.puts original
      file.puts "\n--- Traduzido ---"
      file.puts traduzido
    end
    nome_arquivo
  end
end

# Classe principal que coordena o programa
class App
  def initialize
    @tradutor = Tradutor.new
    @gravador = GravadorDeArquivo.new
  end

  def iniciar
    puts "=== Sistema de Tradução Simples ==="
    
    print "Digite o texto para traduzir: "
    texto = gets.chomp
    
    print "Idioma de origem (ex: pt): "
    de = gets.chomp.downcase
    
    print "Idioma de destino (ex: en): "
    para = gets.chomp.downcase
    
    puts "\nTraduzindo..."
    resultado = @tradutor.traduzir(texto, de, para)
    
    puts "\nResultado da Tradução:"
    puts "-----------------------"
    puts resultado
    puts "-----------------------"
    
    arquivo = @gravador.salvar(texto, resultado)
    puts "\nTradução salva com sucesso em: #{arquivo}"
  end
end

# Execução do Programa
App.new.iniciar
