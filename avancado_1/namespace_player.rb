module Football
    class Player
        def self.info
            puts "Um bom jogador de futebol precisa de um bom condicionamento físico."
        end
    end
end

module Videogame
    class Player
        def self.info
            puts "Um bom jogador de videogame precisa de bons reflexos."
        end
    end
end

Football::Player.info  # Output: Um bom jogador de futebol precisa de um bom condicionamento físico.
Videogame::Player.info  # Output: Um bom jogador de videogame precisa de bons reflexos.