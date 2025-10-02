# Programa que receba nome e idade de uma pessoa e no final mostre uma mensagem
# aula 2 missao 1
puts "Programa que recebe nome e idade"

print "Digite seu nome: "
nome = gets.chomp

print "Digite sua idade: "
idade = gets.chomp.to_i

puts "Olá, #{nome}! Você tem #{idade} anos."