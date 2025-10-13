class Instrumento
  def escrever
    puts "Escrevendo..."
  end
end

class Lapis < Instrumento
  def escrever
    puts "Escrevendo com lapis..."
  end
end

class Caneta < Instrumento
  def escrever
    puts "Escrevendo com caneta..."
  end
end

class MaquinaDeEscrever < Instrumento
  def escrever
    super
    puts "com maquina de escrever..."
  end
end

class Teclado < Instrumento
end

teclado = Teclado.new
teclado.escrever