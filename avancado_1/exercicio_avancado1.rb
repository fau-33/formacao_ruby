# O ruby oferece um método chamado de capitalize pra deixar a primeira letra de uma string maiúscula.
# Crie uma lambda que recebe um nome como parametro e o imprime com a letra maiúscula.Está também
# devera ser salva dentro de uma variavel que sera passada como argumento de um método capitalize_name
# Dentro deste método você chamara a lambda duas vezes, passando como parametro em cada uma delas
# com nomes diferentes.

capitalize = ->(name) { puts name.capitalize }

def capitalize_name(capitalize_lambda)
  capitalize_lambda.call("maria")
  capitalize_lambda.call("joão")
end

capitalize_name(capitalize)