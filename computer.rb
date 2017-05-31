class Computer
  attr_writer :color

  def initialize(color)
    @color = color
  end

  def color
    @color
  end

end

mac=Computer.new('white')

#test
mac.color = "Platinum"
p mac.color
#=>"Platinum"