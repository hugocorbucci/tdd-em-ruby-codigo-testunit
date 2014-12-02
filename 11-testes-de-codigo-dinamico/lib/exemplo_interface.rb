#encoding: UTF-8
require File.expand_path('./botao.rb', File.dirname(__FILE__))
require File.expand_path('./interface.rb', File.dirname(__FILE__))
require File.expand_path('./vetor.rb', File.dirname(__FILE__))
require File.expand_path('./ponto.rb', File.dirname(__FILE__))

botoes = []
botoes << Botao.new(:adiciona_linha)
botoes << Botao.new(:remove_linha)
botoes << Botao.new(:move_linha, Vetor.new(-1, -1))

interface = Interface.new
interface.adiciona(0, *botoes)

interface.clique(Ponto.new(0, 0))
# executa desenho_atual.adiciona_linha()
interface.clique(Ponto.new(2, 0))
# executa desenho_atual.move_linha(Vector.new(-1, -1))
interface.clique(Ponto.new(1, 0))
# executa desenho_atual.remove_linha()
