Dog = Struct.new('Dog', :say)
p Dog.new('bowbow') #=> #<struct Struct::Dog say="bowbow">

Dog2 = Struct.new(:say)
p Dog2.new('bowbow') #=> #<struct Dog2 say="bowbow">
