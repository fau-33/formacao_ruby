# Em Ruby, tudo é um objeto, e os tipos de dados são classes. Aqui estão os principais tipos de dados em Ruby, com exemplos:

# Bignums (BigNum): Números grandes, sem limites de tamanho
# Um número muito grande que excederia o limite de um Fixnum
#grande = 1234567890123456789012345678901234567890
#puts grande.class # => Integer (em Ruby 2.4+)

# Operações com números grandes
# resultado = grande * 2
#puts resultado # => 2469135780246913578024691357802469135780
#puts resultado.class # => Integer (em Ruby 2.4+)

# Fatorial de um número grande
# O fatorial de 100 é um número enorme
# fatorial_100 = (1..100).inject(:*)
#puts fatorial_100
# puts fatorial_100.class # => Integer (em Ruby 2.4+)

# Inteiros (Integer): Números inteiros, positivos, negativos ou zero

idade = 25
quantidade = -10
zero = 0

# puts idade + quantidade

# puts idade.class # => Integer
# puts quantidade.class # => Integer
# puts zero.class # => Integer

# Floats (Float): Números com ponto flutuante, com casas decimais
# area da circunferência
raio = 5.5
pi = 3.14159

area = pi * (raio**2)
area.round(2)

puts area

# Big Decimals (BigDecimal): Números com ponto flutuante, com casas decimais muito grandes

num1 = 1000.54455
num2 = 0.54266879

# puts num1 + num2
# puts num1 - num2
# puts num1 * num2
# puts num1 / num2

# Datas e Horas (Time): Representação de datas e horas no formato ISO 8601

# Importando as bibliotecas necessárias
require 'date'
require 'time'

# Data e hora atual
agora = Time.now
puts "Agora: #{agora}"

# Apenas Data
hoje = Date.today
puts "Hoje: #{hoje}"

# Criando uma data específica
nascimento = Date.new(1995, 6, 15)
puts "Data de nascimento: #{nascimento}"

# Operações com datas
amanha = hoje + 1
puts "Amanhã: #{amanha}"

# Diferença entre datas
dias_de_vida = hoje - nascimento
puts "Dias de vida: #{dias_de_vida.to_i} dias"

