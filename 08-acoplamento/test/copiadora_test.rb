#encoding: UTF-8
require 'test/unit'
require 'mocha/setup'
require File.expand_path('../lib/copiadora.rb', File.dirname(__FILE__))

class CopiadoraTest < Test::Unit::TestCase
  def teste_deve_ler_e_enviar_o_conteudo_lido
    escritor = mock
    leitor = mock

    leitor.expects(:tem_caracteres).twice.returns(true, false)
    leitor.expects(:le_caracteres).returns('mauricio')

    escritor.expects(:escreve).with('mauricio')

    copiadora = Copiadora.new leitor, escritor

    copiadora.copiar
  end
end