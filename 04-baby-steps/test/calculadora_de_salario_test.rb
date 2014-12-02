#encoding: UTF-8
require 'test/unit'
require File.expand_path('../lib/calculadora_de_salario.rb', File.dirname(__FILE__))
require File.expand_path('../lib/funcionario.rb', File.dirname(__FILE__))

class CalculadoraDeSalarioTest < Test::Unit::TestCase
  def teste_deve_calcular_salario_para_desenvolvedores_com_salario_abaixo_do_limite
    calculadora = CalculadoraDeSalario.new
    desenvolvedor = Funcionario.new('Mauricio', 1500.0, Cargo::DESENVOLVEDOR)

    salario = calculadora.calcula_salario desenvolvedor

    assert_equal 1500 * 0.9, salario
  end
end