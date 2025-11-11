# Missão 2
# Em uma classe chamada Carro, Crie um método público chamado get_km
# que recebe os seguintes parametro a seguinte informação "Um fusca de cor amarela viaja a 80 km/h"
# o método get_km deve chamar um método privado com o nome find_km
# Este deve localizar e retornar o casamento de padrão 80 km/h
# No final imprima este retorno. com expressões regulares

class Carro
    def get_km(phrase)
        km = find_km(phrase)
        puts km
        
    end

    private

    def find_km(phrase)
        regex_velocidade = /(\d{1,3}) km\/h/
        match_data = regex_velocidade.match(phrase)
    end
end

phrase = "Um fusca de cor amarela viaja a 80 km/h"

carro = Carro.new
carro.get_km(phrase)
