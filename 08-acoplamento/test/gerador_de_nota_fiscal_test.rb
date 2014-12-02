#encoding: UTF-8
require 'test/unit'
require 'mocha/setup'
require File.expand_path('../lib/pedido.rb', File.dirname(__FILE__))
require File.expand_path('../lib/gerador_de_nota_fiscal.rb', File.dirname(__FILE__))

class GeradorDeNotaFiscalTest < Test::Unit::TestCase
  def teste_deve_invocar_acoes_posteriores
    acao1 = mock.tap{|dao| dao.expects(:executa)}
    acao2 = mock.tap{|sap| sap.expects(:executa)}

    gerador = GeradorDeNotaFiscal.new [acao1, acao2]
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido
  end
  def teste_deve_consultar_a_tabela_para_calcular_valor
    tabela = mock
    tabela.expects(:[]).with(1000.0).returns(0.2)

    gerador = GeradorDeNotaFiscal.new [], tabela
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido

    assert_equal 1000 * 0.2, nf.valor
  end
end
