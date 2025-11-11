# Crie um programa que leia um ano e verifique se ele é bissexto.
# UM ano é bissexto se for divisel por 4, mas não por 100
# exceto se for divisel por 400.

print("Por favor, insira um ano: ")
ano = gets.chomp.to_i

if (ano % 4 == 0 && ano % 100 != 0) || (ano % 400 == 0)
  puts "#{ano} é um ano bissexto."
else
  puts "#{ano} não é um ano bissexto."
end