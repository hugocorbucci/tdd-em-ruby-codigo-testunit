#encoding: UTF-8
require 'test/unit'
require File.expand_path('../lib/pedido', File.dirname(__FILE__))
require File.expand_path('../lib/gerador_de_nota_fiscal', File.dirname(__FILE__))

class GeradorDeNotaFiscalTest < Test::Unit::TestCase
  def teste_deve_gerar_NF_com_valor_de_imposto_descontado
    gerador = GeradorDeNotaFiscal.new
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido

    assert_equal 1000 * 0.94, nf.valor
  end
end