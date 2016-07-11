#!/usr/bin/env ruby

p "2 is off type: "
p 2.class # => Fixnum

p "2.0 is off type: "
p 2.0.class # => Float

p "2_000_000_000 is off type: "
p 2_000_000_000.class # => Bignum

p "ancestors for Fixnum are: "
p Fixnum.ancestors

p "Object includes module(s):"
p Object.included_modules # => [Kernel]

p "Numeric includes module(s):"
p Numeric.included_modules # => [Comparable, Kernel]

p "Integer includes module(s):"
p Integer.included_modules # => [Precision, Comparable, Kernel]

p "Fixunm includes module(s):"
p Fixnum.included_modules # => [Precision, Comparable, Kernel]


p 24.div 2 # division => 12
p (25.0).div(2.0) # result is integer => 12
p 12.modulo 5 # modulo=> 2
p 12.modulo(5.0) # modulo with float => 2.0
p 12.divmod 5 # return array with quotient, modulus => [2, 2]
p 12.0.divmod 5.0 # with float => [2, 2.0]
p 12.quo 5 # return the quotient => 2.4
p 12.remainder 5 # return the remainder => 2
p 25/2
p 25.0/2

p 12 == 24/2 # => true
p 24.eql?(12*2) # => true
p 12 == 14 # => false
p 12 <=> 12 # => 0
p 12 <=> 10 # => 1
p 12 <=> 14 # => -1
