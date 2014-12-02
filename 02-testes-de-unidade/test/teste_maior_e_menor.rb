#encoding: UTF-8
require 'test/unit'
require File.expand_path(File.join(File.dirname(__FILE__), '../lib/maior_e_menor.rb'))
require File.expand_path(File.join(File.dirname(__FILE__), '../lib/carrinho_de_compras.rb'))
require File.expand_path(File.join(File.dirname(__FILE__), '../lib/produto.rb'))

class TesteMaiorMenor < Test::Unit::TestCase
  def teste_ordem_descrescente
    carrinho = CarrinhoDeCompras.new

    carrinho << Produto.new('Geladeira', 450.0)
    carrinho << Produto.new('Liquidificador', 250.0)
    carrinho << Produto.new('Jogo de pratos', 70.0)

    algoritmo = MaiorEMenor.new
    algoritmo.encontra carrinho
    
    assert_equal 'Jogo de pratos', algoritmo.menor.nome
    assert_equal 'Geladeira', algoritmo.maior.nome
  end
  def teste_apenas_um_produto
    carrinho = CarrinhoDeCompras.new
    carrinho << Produto.new('Geladeira', 450.0)

    algoritmo = MaiorEMenor.new
    algoritmo.encontra carrinho

    assert_equal 'Geladeira', algoritmo.menor.nome
    assert_equal 'Geladeira', algoritmo.maior.nome
  end
end