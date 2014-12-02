#encoding: UTF-8
require File.expand_path('./ponto.rb', File.dirname(__FILE__))

class Vetor
  def initialize(x, y)
    @origem = Ponto.new(0,0)
    @destino = Ponto.new(x, y)
  end
  def to_s
    "#{@origem} -> #{@destino}"
  end
end
