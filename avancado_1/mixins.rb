module ImpressoraDecorada
    def imprimir text
        decoracao = "#" * 20
        puts decoracao
        puts text
        puts decoracao
    end
end

module Pernas
    include ImpressoraDecorada
    def chute_frontal
        imprimir "Executando chute frontal"
    end

    def chute_lateral
        imprimir "Executando chute lateral"
    end
end

module Bracos
    include ImpressoraDecorada
    def soco_direito
        imprimir "Executando soco direito"
    end

    def soco_esquerdo
        imprimir "Executando soco esquerdo"
    end

    def gancho
        imprimir "Executando gancho"
    end
end

class LutadorMuayThai
    include Pernas
    include Bracos
end

class LutadorBoxe
    include Bracos
end

puts "Lutador de Muay Thai:"
muay_thai = LutadorMuayThai.new
muay_thai.chute_frontal
muay_thai.soco_direito

puts "\nLutador de Boxe:"
boxeador = LutadorBoxe.new
boxeador.soco_esquerdo
boxeador.gancho