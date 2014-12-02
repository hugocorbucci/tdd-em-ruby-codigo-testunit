#encoding: UTF-8
require 'test/unit'
require File.expand_path('../lib/conversor_de_numero_romano', File.dirname(__FILE__))

class ConversorDeNumeroRomanoTest < Test::Unit::TestCase
  def teste_deve_entender_o_simbolo_I
    romano = ConversorDeNumeroRomano.new
    numero = romano.converte 'I'
    assert_equal 1, numero
  end
end