# Exemplo de uso do sinatra
#
# Como usar:
# Instalar Gem:
# *gem install sinatra
# Executar o teste:
# *ruby teste6.rb.

require 'rubygems'
require 'sinatra'

get '/about' do
  "Sinatra, um minimalista webframework usando blocos!"
end
