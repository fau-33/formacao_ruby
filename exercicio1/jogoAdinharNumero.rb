# Jogo de Adivinhar o Número
# Neste exercício, vamos criar um jogo de adivinhação de números. O programa escolherá um número aleatório dentro de um intervalo definido pelo usuário. Vamos praticar conceitos como entrada e saída, tipos de dados e estruturas de controle. Usaremos um loop para permitir que o jogador continue tentando até acertar. Também implementaremos mensagens para indicar se o palpite está muito alto, baixo ou se foi acertado. Ao final, revisaremos o código e os conceitos aplicados. Vamos lá!

# Exercício
# Um jogo simples onde o programa "pensa" em um número em um intervalo e o jogador tenta adivinhar.

# Descrição
# O programa solicita os números mínimo e máximo, em seguida solicita ao usuário insira um palpite, e o programa responde com "mais alto", "mais baixo" ou "você acertou!".

# Conceitos Praticados:
# Fundamentos: Entrada e saída básica.
# Tipos de Dados: Inteiros, Ranges para definir o limite dos números ((1..100)).
# Estruturas de Controle:
# Uso de laços (como while ou loop) para continuar o jogo até o acerto.
# if/elsif/else para comparar o palpite com o número secreto.

puts "Jogo de Adivinhar o Número"

puts "Digite o número mínimo:"
minimo = gets.chomp.to_i

puts "Digite o número máximo:"
maximo = gets.chomp.to_i

numero_secreto = rand(minimo..maximo)

puts "Pensei em um número entre #{minimo} e #{maximo}. Tente adivinhar:"

palpite = gets.chomp.to_i

while palpite != numero_secreto
    if palpite > numero_secreto
        puts "Mais baixo!"
    else
        puts "Mais alto!"
        puts "Tente novamente:"
    end
    palpite = gets.chomp.to_i
end
puts "Você acertou!"

