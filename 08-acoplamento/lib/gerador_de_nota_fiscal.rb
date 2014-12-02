#encoding: UTF-8
require File.expand_path('./nota_fiscal.rb', File.dirname(__FILE__))
require File.expand_path('./nf_dao.rb', File.dirname(__FILE__))
class GeradorDeNotaFiscal
  def gera(pedido)
    nf = NotaFiscal.new pedido.cliente,
      pedido.valor_total * 0.94, Time.now

    NFDao.new.persiste nf

    nf
  end
end