# 1.Utlizando uma collection do tipo Array, escreva um programa que receba 3 numeros e no final exiba o resultado de cada um deles elevado ao segunda potência.

array = []

i = 1

3.times do
  print "Digite o #{i} numero: "
  array.push(gets.chomp.to_i)
  i += 1
end

array.each do |a|
  result = a**2
  puts "#{a} elevado ao quadrado eh #{result}"
end

# =================================================

# 2.Crie uma collection do tipo hash e permita que o usuario crie três elementos informando chave e valor. No final do programa para cada um desses elementos imprima a frase "Umas das chaves é....e o seu valor é... "

hash = {}

3.times do
  print "Digite a chave: "
  key = gets.chomp
  print "Digite o valor: "
  value = gets.chomp
  hash[key] = value
end

hash.each do |key, value|
  puts "Uma das chaves eh #{key} e o seu valor eh #{value}"
end

# =================================================

# 3.Dado seguinte hash:

Numbers = {a:10, b:302,c:20, d:25, e:15}

# 3.1. Crie uma instrução que seleciona o maior valor deste hash e no final imprima a chave e o valor do elemento resultante.

maior = Numbers.max_by do |chave, valor|
  valor
end

puts "A maior chave eh #{maior[0]} e o seu valor eh #{maior[1]}"