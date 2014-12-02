#encoding: UTF-8
require File.expand_path('./nota_fiscal.rb', File.dirname(__FILE__))
class GeradorDeNotaFiscal
  def initialize(dao)
    @dao = dao
  end
  def gera(pedido)
    nf = NotaFiscal.new pedido.cliente,
      pedido.valor_total * 0.94, Time.now

    @dao.persiste nf

    nf
  end
end