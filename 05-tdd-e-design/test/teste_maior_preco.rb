#encoding: UTF-8
require 'test/unit'
require File.expand_path('../lib/item.rb', File.dirname(__FILE__))
require File.expand_path('../lib/carrinho_de_compras.rb', File.dirname(__FILE__))
require File.expand_path('../lib/maior_preco.rb', File.dirname(__FILE__))

class TesteMaiorPreco < Test::Unit::TestCase
  def teste_deve_retornar_zero_se_carrinho_vazio
    carrinho = CarrinhoDeCompras.new

    algoritmo = MaiorPreco.new
    valor = algoritmo.encontra carrinho

    assert_equal 0, valor
  end
  def teste_deve_retornar_valor_do_item_se_carrinho_com_1_elemento
    carrinho = CarrinhoDeCompras.new
    carrinho << Item.new('Geladeira', 1, 900.0)

    algoritmo = MaiorPreco.new
    valor = algoritmo.encontra carrinho

    assert_equal 900.0, valor
  end
end