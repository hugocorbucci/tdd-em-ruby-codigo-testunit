#encoding: UTF-8
require 'test/unit'
require 'mocha/setup'
require File.expand_path('../lib/com_limite_de_tempo.rb', File.dirname(__FILE__))

class ObjetoFalso
  def initialize(velocidade_de_execucao)
    @velocidade = velocidade_de_execucao
  end
  def metodo
    sleep(@velocidade)
    return true
  end
end

class TesteComLimiteDeTempo < Test::Unit::TestCase
  def teste_chama_metodo_e_termina_com_sucesso_para_execucao_rapida
    execucao_limitada = 
      ComLimiteDeTempo.new(1, ObjetoFalso.new(0))
    
    assert_equal true, execucao_limitada.metodo
  end
  def teste_chama_metodo_e_lanca_erro_para_execucao_lenta
    execucao_limitada = 
      ComLimiteDeTempo.new(1, ObjetoFalso.new(5))
    
    assert_raises(TimeoutError) do
      execucao_limitada.metodo
    end
  end
end
