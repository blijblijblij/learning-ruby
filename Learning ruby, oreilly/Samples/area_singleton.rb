#!/usr/bin/env ruby

class Area

  class << self

    def rect( length, width, units="inches" )
      area = length*width
      printf( "The area of this rectangle is %.2f %s.", area, units )
      sprintf( "%.2f", area )
    end

  end

end

Area.rect(10, 10) # The area of this rectangle is 100.00 inches.=> "100.00"
