#encoding: UTF-8
File.expand_path('./leitor_de_xml.rb', File.dirname(__FILE__))
File.expand_path('./escritor_pela_serial.rb', File.dirname(__FILE__))
class Copiadora
  def copiar
    leitor = LeitorDeXML.new
    escritor = EscritorPelaSerial.new
    while leitor.tem_caracteres
      escritor.escreve leitor.le_caracteres
    end
  end
end
