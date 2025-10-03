# Programa pra receber numeros inteiros e fazer as operações basicas
# aula 2 missao 2
puts "Programa que recebe dois números inteiros e faz as operações básicas"

print "Digite o primeiro número inteiro: "
number1 = gets.chomp.to_i

print "Digite o segundo número inteiro: "
number2 = gets.chomp.to_i

addition = number1 + number2
subtraction = number1 - number2
multiplication = number1 * number2
division = number1 / number2
resto = number1 % number2
potencia = number1 ** number2

puts "O resultado da soma entre dois números é #{addition}"
puts "O resultado da subtração entre dois números é #{subtraction}"
puts "O resultado da multiplicação entre dois números é #{multiplication}"
puts "O resultado da divisão entre dois números é #{division}"
puts "O resultado do resto da divisão entre dois números é #{resto}"
puts "O resultado da potência entre dois números é #{potencia}"