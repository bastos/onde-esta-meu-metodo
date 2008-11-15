class Cat
  def initialize(&block)
    instance_eval(&block)
  end
  def say(str)
    puts str
  end
end


Cat.new do
  say "Hello"
end

