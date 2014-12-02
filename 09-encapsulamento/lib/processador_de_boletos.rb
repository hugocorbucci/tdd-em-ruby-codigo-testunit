#encoding: UTF-8
require File.expand_path('./pagamento.rb', File.dirname(__FILE__))

class ProcessadorDeBoletos
  def processa boletos, fatura
    valor_total = 0
    boletos.each do |boleto|
      pagamento = Pagamento.new boleto.valor, MeioDePagamento::BOLETO
      fatura.pagamentos << pagamento

      valor_total += boleto.valor
    end

    fatura.paga = true if valor_total >= fatura.valor
  end
end

module MeioDePagamento
  BOLETO = 0
end
