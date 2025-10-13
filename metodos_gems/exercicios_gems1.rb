# Siga a documentação da gem cpf_cnpj para criar um programa que recebe como entrada um numero de CPF e em um método verifique se este número é válido
# link da documentação https://github.com/fnando/cpf_cnpj

require 'cpf_cnpj'

def verificar_cpf(cpf)
  # Remove caracteres especiais do CPF
  cpf_limpo = cpf.gsub(/[^0-9]/, '')
  
  # Verifica se o CPF é válido usando a gem cpf_cnpj
  if CPF.valid?(cpf_limpo)
    puts "CPF #{cpf} é VÁLIDO!"
    return true
  else
    puts "CPF #{cpf} é INVÁLIDO!"
    return false
  end
end

# Programa principal
puts "=== Verificador de CPF ==="
print "Digite um número de CPF: "
cpf_entrada = gets.chomp

# Chama o método para verificar o CPF
verificar_cpf(cpf_entrada)