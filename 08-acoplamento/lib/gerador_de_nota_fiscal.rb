#encoding: UTF-8
require File.expand_path('./nota_fiscal.rb', File.dirname(__FILE__))
require File.expand_path('./relogio_do_sistema.rb', File.dirname(__FILE__))
class GeradorDeNotaFiscal
  def initialize(acoes, relogio = RelogioDoSistema.new)
    @acoes = acoes
    @relogio = relogio
  end
  def gera(pedido)
    nf = NotaFiscal.new pedido.cliente,
      pedido.valor_total * 0.94,
      @relogio.hoje

    @acoes.each { |acao| acao.executa nf }

    nf
  end
end