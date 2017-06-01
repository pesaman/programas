class Computer
  attr_reader :processor #metodo de acceso de lectura

  def initialize(processor)
    @processor = processor
  end

end

mac=Computer.new("Intel")

#test
p mac.processor
#=>"Intel"
mac.processor = "AMD"
#=>...undefined method `processor='...