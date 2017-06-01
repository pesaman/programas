class Door

  def initialize(color)
    @color = color
  end

  def color=(new_color)
    @color = new_color.capitalize
  end

  def spray_paint
    "The #{@color} door looks great!"
  end
end  

big_door=Door.new('blue')

#test
big_door.color = ('yellow') 
p big_door.spray_paint == "The Yellow door looks great!"