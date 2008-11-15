# Uso do yield, esse exemplo vai dar erro!

class Cat
  def initialize
    yield
  end
  def say(str)
    puts str
  end
end

Cat.new do
  say "Hello"
end


