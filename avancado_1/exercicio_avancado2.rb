# Crie um módulo chamado Person com as classes Juridic e Physical.
# Ao executar a instrução Person::Juridic.new("M. C. Investimentos ", '00.000.000/0001-91').add
# Pessoa juridica adicionada nome e cnpj e ao executar a instrução

module Person
  class Juridic
    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj
    end

    def add
      puts "Pessoa juridica adicionada:"
      puts "Nome: #{@name}"
      puts "CNPJ: #{@cnpj}"
    end
  end
  
  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      puts "======================="
      puts "Pessoa física adicionada:"
      puts "Nome: #{@name}"
      puts "CPF: #{@cpf}"
    end
  end
end

Person::Juridic.new("M. C. Investimentos", '00.000.000/0001-91').add
Person::Physical.new("João Silva", '000.000.000-00').add