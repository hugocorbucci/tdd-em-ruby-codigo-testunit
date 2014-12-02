#encoding: UTF-8
require File.expand_path('./item.rb', File.dirname(__FILE__))
require File.expand_path('./carrinho_de_compras.rb', File.dirname(__FILE__))

class CarrinhoDeComprasBuilder
  def initialize
    @carrinho = CarrinhoDeCompras.new
  end
  def com_itens(*valores)
    valores.each do |valor|
      @carrinho << Item.new('item', 1, valor)
    end
    self
  end
  def cria
    @carrinho
  end
end
