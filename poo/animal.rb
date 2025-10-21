class Animal
  def pular
    puts "Pulou!"
  end

  def dormir
    puts "Dormiu!"
  end
end

class Cachorro < Animal
  def latir
    puts "Latiu!"
  end
end

cachorro = Cachorro.new
cachorro.pular
cachorro.dormir
cachorro.latir