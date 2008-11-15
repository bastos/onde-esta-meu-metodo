# -*- coding: utf-8 -*-
presentation :title => "Ruby - Onde está meu método? - Ceará on Rails" do
  slide do
    center do 
      h1 "Onde está meu método?" , :style=>"margin-top:25%"
      h3 "Ruby, Mágica, Metaprogramação e diversão!"
    end
  end

  slide do
    h1 "Quem sou eu?"
    h2 "Tiago Bastos"
    h3 "%w{Estudante Desenvolvedor Python PHP Ruby *}.each {|a| puts a}"
  end

  slide do
    center {
      h1 "As coisas não precisam ser complicadas!"
      img :src => "assets/frustration.png", :alt=> "http://xkcd.com/457/" 
    }
  end

  slide do
    h1 "Operadores são syntax sugar"
    code :type=>:ruby, :code => 'class Foo
  def initialize
    @fools = []
  end
  
  def << a
    @fools << a
  end
  
  def * i
    i.times { puts show_me_the_foo }
  end
  
  def show_me_the_foo
    @fools.each {|foo| puts foo}
  end
end'
  end

  slide do 
    h1  "Exemplo"
    code  :type => :ruby, :code => 'foo_box = Foo.new
foo_box << "LOL"
foo_box << "OMG"
foo_box.show_me_the_foo
foo_box * 10'
  end

  slide do
    h1 "Monkey Patching"
    h3 "Nada precisa ser tão difícil de se abrir, nem mesmo classes"
    code :type=>:ruby, :code => 'class String
 def lolize
   "LOL #{self} LOL"
 end
end

"Ruby!".lolize
'
  end

  slide do
    h1 "Mixins"
    h2 ""
 code :type=>:ruby, :code => 'module Rubist;end
module Snaker;end
module Sysadmin;end
module JabbaTheHutt;end
class Programmer;end

class Me < Programmer
 include Snaker
 include Rubist
end
class You < Programmer
 include Snaker
 include Sysadmin  
end
class UnHappy < Programmer
 include JabbaTheHutt
end
'    
  end

  slide do
    h1 "Blocos!"
    code :type=>:ruby, :code => 'LoLCat do
   say "I haz Rubyz"
end'
  end

slide do
  h1 "Sinatra!"
  code :type=>:ruby, :code => "require 'sinatra'

get '/about' do
  \"Sinatra, um minimalista webframework usando blocos!\"
end
"
end

  slide do
    h1 "yield"
    h3 "Blocos possuem o contexto de onde foram criadas"
    code :type => :ruby, :code => 'class Cat
  def initialize
    yield
  end
  def say(str)
    puts str
  end
end'
    p "undefined method `say' for main:Object (NoMethodError)"
  end

  slide do
    h1 "eval is not evil"
    h3 "Blocos + eval = DSL"
    code :type=>:ruby, :code => 'class Cat
  def initialize(&block)
    instance_eval(&block)
  end
  def say(str)
    puts str
  end
end
 '
  end

  slide do
    h1 "Domain Specific Language"
    h3 "Blocos + eval = DSL"
    center { code :type=>:ruby, :code => 'Cat.new { say "Eval is not evil!" }' } 
  end

  slide do
    h1 "Estes slides foram feitos com uma DSL: Gary"
    code :type=>:ruby, :code => 'presentation :title => "My First Presentation" do
    slide  do
     h1 "Just a test"
      code "def a; a+a;end"
    end

    slide  do
      h1 "Bye"
      center { h3 "Bye people!" }
    end
end
'
  end

  slide do
  h1 "BOT"
  code :type=>:ruby, :code => 'config do |c|
  c.nick = "echo_bot"
  c.server = "irc.freenode.net"
  c.port = 6667
end
 
on :connect do
  join "#Awesome_Channel"
end
 
on :channel, /.*/ do
  msg channel, message
end'
  end

  slide do
    h1 "Onde está meu método!?"
    code :type=>:ruby, :code => 'class Cat 
  def method_missing(m, *args, &block)
    if m.to_s =~/^gimme_(.+)_burgerz/
      x = m.to_s.match(/^gimme_(.+)_burgerz/)[1]
      puts "I Haz #{x.capitalize} burgerz" 
    else
      super
    end
  end
end

Cat.new.gimme_ten_burgers
'
  end

  slide do
    h1 "I Haz Ten burgerz", :style=>"margin-top:30%"
  end

  slide do
    h1 "Lindo!", :style=>"margin-top:25%"
    h1 "Mas e ai?", :style=>"margin-top:25%"
  end

  slide do
    h1 "Ai que você entende o ActiveRecord!"
    code :type=>:ruby, :code => "Dummy.find_by_name('Tiago')"
    code :type=>:ruby, :code => "Dummy.find_by_name_and_age('Tiago', 22)"
  end  

  slide do
    h1 "Ei Classe quero o fale"
    code :type=>:ruby, :code => "class DHH
 def fale
  puts 'FUCK YOU'
 end
 def exemplo
   send(:fale)
 end
end

DHH.new.exemplo
"
  end  

  slide do
    h1 "Podemos simplesmente criar um alias para o método antigo"
    h2 "E redeclarar"
    code :type => :ruby, :code => 'class DHH
  alias_method :antigo, :exemplo
  def exemplo
    puts ":D"
  end
end
# O novo
DHH.new.exemplo
# O antigo!
DHH.new.old
'  
  
  end

  slide do
    h1 "Ruby é divertido!"
    ul do
     li "Escreva DSL nele"
     li "Funções anônimas"
     li "Sintaxe Natural"
     li "Rails, Merb, Sinatra, Markaby, Grit, Rake..."
    end
  end  
  
  slide do
    center { img :src=>"assets/vodka.jpg" } 
  end

  slide :style=>"background-image:url(assets/mafia.jpg);
  background-repeat: no-repeat;
background-attachment:fixed;
background-position: top center
  " do
  h1 "Perguntas?"
  end
  
  slide do
    h1 "Obrigado!"
    div do
      p "Links:"
      ul do
        li "Meus projetos OpenSource http://github.com/bastos"
        li "Gary Presentation Builder http://github.com/bastos/gary"        
        li "Frustation by http://xkcd.com/457/"
        li "Sinatra http://github.com/bmizerany/sinatra/tree/master"
        li "Isaac http://github.com/ichverstehe/isaac"
      end
    end
  end
end
