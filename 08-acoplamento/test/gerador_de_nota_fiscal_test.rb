#encoding: UTF-8
require 'test/unit'
require 'mocha/setup'
require File.expand_path('../lib/pedido.rb', File.dirname(__FILE__))
require File.expand_path('../lib/gerador_de_nota_fiscal.rb', File.dirname(__FILE__))

class GeradorDeNotaFiscalTest < Test::Unit::TestCase
  def teste_deve_persistir_NF_gerada
    # criando o mock
    dao = mock
    # marcando o que esperamos que aconteça
    dao.expects(:persiste)

    gerador = GeradorDeNotaFiscal.new
    pedido = Pedido.new('Mauricio', 1000, 1)

    nf = gerador.gera pedido
  end
end
