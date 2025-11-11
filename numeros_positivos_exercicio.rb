# Escreva um programa que leia três numeros inteiros
# e verifique se pelo menos dois deles são positivos.

print "Insira o primeiro número: "
num1 = gets.chomp.to_i
print "Insira o segundo número: "
num2 = gets.chomp.to_i
print "Insira o terceiro número: "
num3 = gets.chomp.to_i

positivos = 0
negativos = 0

positivos += 1 if num1 > 0
positivos += 1 if num2 > 0
positivos += 1 if num3 > 0

negativos += 1 if num1 < 0
negativos += 1 if num2 < 0
negativos += 1 if num3 < 0

if positivos >= 2
  
  puts "Você digitou #{positivos} números positivos e #{negativos} números negativos."
else
  
  puts "Você digitou #{positivos} números positivos e #{negativos} números negativos."
end