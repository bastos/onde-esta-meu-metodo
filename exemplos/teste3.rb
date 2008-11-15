# -*- coding: utf-8 -*-
# Exemplo para criar aliase para um método
# e redeclarar um method com o mesmo nome sem
# perder o antigo.

class DHH
 def fale
  puts 'FUCK YOU'
 end
 def exemplo
   send(:fale)
 end
end

DHH.new.exemplo

class DHH
  alias_method :antigo, :exemplo
  def exemplo
    puts ":D"
  end
end

DHH.new.exemplo
