class Door

  def initialize(color)
    @color = color
  end

  def spray_paint(color)
    @color = color
    "The #{@color.capitalize} door looks great!"
  end
end  

big_door=Door.new('blue')# nueva instancia


#test
p big_door.spray_paint('yellow') == "The Yellow door looks great!"
