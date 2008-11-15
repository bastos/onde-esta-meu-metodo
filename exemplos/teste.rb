# Exemplo de Method missig

class Cat 
  def method_missing(m, *args, &block)
    if m.to_s =~/^gimme_(.+)_burgers/
      x = m.to_s.match(/^gimme_(.+)_burgers/)[1]
      puts "I Haz #{x.capitalize} burgers" 
    else
      super
    end
  end
end

Cat.new.gimme_ten_burgers
Cat.new.gimme_eight_burgers
