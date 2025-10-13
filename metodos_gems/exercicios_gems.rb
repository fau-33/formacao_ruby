# Crie um programa que possua um método que resolva a potência dado um número base e seu expoente. Estes dois valores devem ser informados pelo usuário.

def calcular_potencia(base, expoente)
  resultado = base ** expoente
  return resultado
end

# Solicita os valores ao usuário
print "Digite o número base: "
base = gets.chomp.to_f

print "Digite o expoente: "
expoente = gets.chomp.to_f

# Calcula e exibe o resultado
resultado = calcular_potencia(base, expoente)
puts "#{base} elevado a #{expoente} é igual a #{resultado}"