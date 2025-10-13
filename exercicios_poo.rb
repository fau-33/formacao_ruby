# Crie um programa seguindo esse paradigma com:
# Classes - esportista, métodos competir => Imprime uma mensagem "Participando de uma competição"
class Esportista
  def competir
    puts "Participando de uma competição"
  end
end
# classes - JogadorDeFutebol, métodos correr => Imprime uma mensagem "Correndo atrás da bola"
class JogadorDeFutebol < Esportista
  def correr
    puts "Correndo atrás da bola"
  end
end
# classes - Maratonista, métodos correr => Imprime uma mensagem "Percorrendo o circuito"
class Maratonista < Esportista
  def correr
    puts "Percorrendo o circuito"
  end
end
# No final do programa execute os métodos competir e correr em objetos do tipo JogadorDeFutebol e Maratonista

esportistas = [JogadorDeFutebol.new, Maratonista.new]

esportistas.each do |esportista|
  esportista.competir
  esportista.correr
end