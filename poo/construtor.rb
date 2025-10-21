class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def check
    puts "Instância da classe iniciada com valores"
    puts "Nome: #{@name}"
    puts "Idade: #{@age}"
  end
end

person = Person.new("Alice", 30)
person.check
