#encoding: UTF-8
require File.expand_path('./pagamento.rb', File.dirname(__FILE__))

class ProcessadorDeBoletos
  def processa boletos, fatura
    valor_total = 0
    boletos.each do |boleto|
      pagamento = Pagamento.new boleto.valor, MeioDePagamento::BOLETO
      fatura.adiciona_pagamento pagamento
    end
  end
end

module MeioDePagamento
  BOLETO = 0
end
