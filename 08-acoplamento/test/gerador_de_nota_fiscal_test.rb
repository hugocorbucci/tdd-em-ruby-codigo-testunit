#encoding: UTF-8
require 'test/unit'
require 'mocha/setup'
require File.expand_path('../lib/pedido.rb', File.dirname(__FILE__))
require File.expand_path('../lib/gerador_de_nota_fiscal.rb', File.dirname(__FILE__))

class GeradorDeNotaFiscalTest < Test::Unit::TestCase
  def teste_deve_persistir_NF_gerada
    dao = mock
    dao.expects(:persiste)
    sap = stub_everything
    
    gerador = GeradorDeNotaFiscal.new dao, sap
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido
  end
  def teste_deve_enviar_NF_gerada_para_SAP
    dao = stub_everything
    sap = mock.tap{|sap| sap.expects(:envia)}

    gerador = GeradorDeNotaFiscal.new dao, sap
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido
  end
end
