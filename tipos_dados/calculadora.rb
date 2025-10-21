# Crie uma calculadora +, -, *, /. Não esquecer do usuário feche o programa.

result = ""
loop do
  puts result
  puts "Selecione umas das seguintes opções"
  puts "1 - Adição"
  puts "2 - Subtração"
  puts "3 - Multiplicação"
  puts "4 - Divisão"
  puts "0 - Sair"
  print "Opção: "

  option = gets.chomp.to_i

  if option == 1
    print "Digite o primeiro número: "
    number1 = gets.chomp.to_i
    print "Digite o segundo número: "
    number2 = gets.chomp.to_i
    result = "O resultado da adição é #{number1 + number2}"
  elsif option == 2
    print "Digite o primeiro número: "
    number1 = gets.chomp.to_i
    print "Digite o segundo número: "
    number2 = gets.chomp.to_i
    result = "O resultado da subtração é #{number1 - number2}"
  elsif option == 3
    print "Digite o primeiro número: "
    number1 = gets.chomp.to_i
    print "Digite o segundo número: "
    number2 = gets.chomp.to_i
    result = "O resultado da multiplicação é #{number1 * number2}"
  elsif option == 4
    print "Digite o primeiro número: "
    number1 = gets.chomp.to_i
    print "Digite o segundo número: "
    number2 = gets.chomp.to_i
    result = "O resultado da divisão é #{number1 / number2}"
  elsif option == 0
    break
  else
    result = "Opção inválida"
  end
  system "clear"

end