#encoding: UTF-8
require 'test/unit'
require File.expand_path('../lib/calculadora.rb', File.dirname(__FILE__))

class CalculadoraTest < Test::Unit::TestCase
  def teste_deve_somar_dois_numeros_positivos
    assert_equal 4, Calculadora.new.soma(2,2)
  end
  def teste_deve_somar_positivo_com_negativo
    assert_equal 4, Calculadora.new.soma(6,-2)
  end
  def teste_deve_somar_negativo_com_positivo
    assert_equal -4, Calculadora.new.soma(-6,2)
  end
  def teste_deve_somar_dois_numeros_negativos
    assert_equal -4, Calculadora.new.soma(-2,-2)
  end
  def teste_deve_somar_com_zero
    assert_equal 4, Calculadora.new.soma(0,4)
    assert_equal 4, Calculadora.new.soma(4,0)
  end
end
