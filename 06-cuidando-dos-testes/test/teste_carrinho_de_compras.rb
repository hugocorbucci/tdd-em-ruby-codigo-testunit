#encoding: UTF-8
require 'test/unit'
require File.expand_path('../lib/item.rb', File.dirname(__FILE__))
require File.expand_path('../lib/carrinho_de_compras.rb', File.dirname(__FILE__))

class TesteCarrinhoDeCompras < Test::Unit::TestCase
  def teste_deve_retornar_zero_se_carrinho_vazio
    carrinho = CarrinhoDeCompras.new

    assert_equal 0, carrinho.maior_valor
  end
  def teste_deve_retornar_valor_do_item_se_carrinho_com_1_elemento
    carrinho = CarrinhoDeCompras.new
    carrinho << Item.new('Geladeira', 1, 900.0)

    assert_equal 900.0, carrinho.maior_valor
  end
  def teste_deve_retornar_maior_valor_se_carrinho_contem_muitos_elementos
    carrinho = CarrinhoDeCompras.new
    carrinho << Item.new('Geladeira', 1, 900.0)
    carrinho << Item.new('Fogão', 1, 1500.0)
    carrinho << Item.new('Máquina de Lavar', 1, 750.0)

    assert_equal 1500.0, carrinho.maior_valor
  end
end