#encoding: UTF-8
require 'test/unit'
require File.expand_path('../lib/processador_de_boletos.rb', File.dirname(__FILE__))
require File.expand_path('../lib/fatura.rb', File.dirname(__FILE__))
require File.expand_path('../lib/boleto.rb', File.dirname(__FILE__))

class ProcessadorDeBoletosTest < Test::Unit::TestCase
  def teste_deve_processar_pagamento_via_boleto_unico
    processador = ProcessadorDeBoletos.new

    fatura = Fatura.new('Cliente', 150.0)
    b1 = Boleto.new(150.0)

    processador.processa([b1], fatura)

    assert_equal 1, fatura.pagamentos.size
    assert_equal 150.0, fatura.pagamentos[0].valor
  end
  def teste_deve_marcar_fatura_como_paga_caso_boleto_unico_pague_tudo
    processador = ProcessadorDeBoletos.new

    fatura = Fatura.new('Cliente', 150.0)
    b1 = Boleto.new 150.0

    processador.processa [b1], fatura

    assert fatura.paga?
  end
end