require_relative 'mercado'
require_relative 'produto'

# Criar alguns produtos
banana = Produto.new("Banana", 2.00)
maca = Produto.new("Maçã", 3.50)
arroz = Produto.new("Arroz", 15.90)

# Criar o mercado
mercado = Mercado.new

# Fazer compras
mercado.comprar(banana)
mercado.comprar(maca)
mercado.comprar(arroz)

# Listar todas as compras
mercado.listar_compras

# Mostrar o total
mercado.total