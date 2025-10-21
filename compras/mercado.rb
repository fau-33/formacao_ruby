class Mercado
  def initialize
    @compras = []
  end

  def comprar(produto)
    if produto.is_a?(Produto)
      @compras << produto
      puts "Comprando #{produto.nome} por R$#{produto.preco}"
    else
      puts "Erro: Por favor, forneça um objeto Produto válido"
    end
  end

  def total
    total = @compras.sum { |produto| produto.preco }
    puts "\nTotal da compra: R$#{total}"
  end

  def listar_compras
    puts "\nLista de compras:"
    @compras.each do |produto|
      puts produto
    end
  end
end