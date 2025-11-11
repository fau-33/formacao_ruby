# Crie um programa que leia a idade de uma pessoa
# e verfique se ela é elegível para votar (idade igual ou superior a 18 anos).

print "Por favor, insira sua idade: "
idade = gets.chomp.to_i

if idade >= 18
  puts "Você é elegível para votar."
else
  puts "Você não é elegível para votar."
end