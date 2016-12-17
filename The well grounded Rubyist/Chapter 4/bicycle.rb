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
class Tandem < Bicycle
  def initialize(gears)
    super
    @seats = 2
  end
end
