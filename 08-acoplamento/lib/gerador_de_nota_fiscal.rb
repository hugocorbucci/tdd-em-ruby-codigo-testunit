#encoding: UTF-8
require File.expand_path('./nota_fiscal.rb', File.dirname(__FILE__))
require File.expand_path('./relogio_do_sistema.rb', File.dirname(__FILE__))
require File.expand_path('./tabela.rb', File.dirname(__FILE__))
class GeradorDeNotaFiscal
  def initialize(acoes, relogio = RelogioDoSistema.new,
    tabela = Tabela.new)
    @acoes = acoes
    @relogio = relogio
    @tabela = tabela
  end
  def gera(pedido)
    nf = NotaFiscal.new pedido.cliente,
      pedido.valor_total * @tabela[pedido.valor_total],
      @relogio.hoje

    @acoes.each { |acao| acao.executa nf }

    nf
  end
end