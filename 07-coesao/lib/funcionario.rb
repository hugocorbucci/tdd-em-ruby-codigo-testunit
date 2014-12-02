#encoding: UTF-8
require File.expand_path('./cargo.rb', File.dirname(__FILE__))
class Funcionario
  attr_reader :nome, :salario, :cargo
  def initialize(nome, salario, cargo)
    @nome = nome
    @salario = salario
    @cargo = cargo
  end
end