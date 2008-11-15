# -*- coding: utf-8 -*-
# Operadores são apenas syntax sugar.

class Foo
  def initialize
    @fools = []
  end

  # Redeclarando operadores ;)
  def << a
    @fools << a
  end
  
  def * i
    i.times { puts show_me_the_foo }
  end
  
  def show_me_the_foo
    @fools.each {|foo| puts foo}
  end
end

foo_box = Foo.new
foo_box << "LOL"
foo_box << "OMG"
foo_box.show_me_the_foo
foo_box * 10
