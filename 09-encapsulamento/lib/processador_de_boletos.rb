#encoding: UTF-8
require File.expand_path('./pagamento.rb',
  File.dirname(__FILE__))

class ProcessadorDeBoletos
  def processa boletos, fatura
    boleto = boletos[0]
    pagamento = 
      Pagamento.new boleto.valor, MeioDePagamento::BOLETO
    fatura.pagamentos << pagamento
  end
end

module MeioDePagamento
  BOLETO = 0
end
