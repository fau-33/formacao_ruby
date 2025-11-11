# Missão 1
# Crie uma expressão regular que faça o casamento padrão com o número de telefone
# no texto a seguir: "OLá, tudo bem? Meu whats app é (99)7 9999-9999. Me ligue quando puder!"

regex_telefone = /\(\d{2}\)7 \d{4}-\d{4}/
puts regex_telefone.match("OLá, tudo bem? Meu whats app é (99)7 9999-9999. Me ligue quando puder!")

