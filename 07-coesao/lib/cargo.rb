#encoding: UTF-8
require File.expand_path('./dez_ou_vinte_por_cento.rb', File.dirname(__FILE__))
require File.expand_path('./quinze_ou_vinte_cinco_por_cento.rb', File.dirname(__FILE__))
class Cargo
  def initialize(regra)
    @regra = regra
  end

  DESENVOLVEDOR = Cargo.new(DezOuVintePorCento.new)
  DBA = Cargo.new(QuinzeOuVinteCincoPorCento.new)
  TESTADOR = Cargo.new(QuinzeOuVinteCincoPorCento.new)
  attr_reader :regra
  private :initialize
end