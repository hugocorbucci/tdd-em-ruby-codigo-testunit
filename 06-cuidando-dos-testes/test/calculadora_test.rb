#encoding: UTF-8
require 'test/unit'
require File.expand_path('../lib/calculadora.rb', File.dirname(__FILE__))

class CalculadoraTest < Test::Unit::TestCase
  def teste_deve_somar_um_mais_um
    assert_equal 2, Calculadora.new.soma(1,1)
  end
  def teste_deve_somar_um_mais_dois
    assert_equal 3, Calculadora.new.soma(1,2)
  end
  def teste_deve_somar_dois_mais_dois
    assert_equal 4, Calculadora.new.soma(2,2)
  end
end
