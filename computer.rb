class Computer
  attr_accessor :color
  def initialize(color)
    @color = color
  end
 
end
mac=Computer.new('white')

#test
mac.color = "Platinum"
p mac.color
#=>"Platinum"