# -*- coding: utf-8 -*-
# Monkey patching
# Colocando um método novo na classe String

class String
 def lolize
   "LOL #{self} LOL"
 end
end

"CAT".lolize
