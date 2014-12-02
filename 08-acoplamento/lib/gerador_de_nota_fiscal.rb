#encoding: UTF-8
require File.expand_path('./nota_fiscal.rb', File.dirname(__FILE__))
class GeradorDeNotaFiscal
  def gera(pedido)
    NotaFiscal.new pedido.cliente,
      pedido.valor_total * 0.94, Time.now
  end
end