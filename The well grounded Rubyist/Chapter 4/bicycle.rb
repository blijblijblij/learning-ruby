# generic bicycle class
class Bicycle
  attr_reader :gears, :wheels, :seats
  def initialize(gears = 1)
    @wheels = 1
    @seats = 1
    @gears = gears
  end
end
# tandem class extends on bicycle but has two seats
# super can be called in 3 manners:
# - super           : sends all arguments along with the called
# - super()         : sends no arguments
# - super (a,b,c)   : sends only the specified list a,b,c
class Tandem < Bicycle
  def initialize(gears)
    super
    @seats = 2
  end
end
