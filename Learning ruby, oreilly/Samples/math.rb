#!/usr/bin/env ruby

2.class # => Fixnum
2.0.class # => Float
2_000_000_000.class # => Bignum

Fixnum.ancestors # => [Fixnum, Integer, Precision, Numeric, Comparable, Object, Kernel]
Object.included_modules # => [Kernel]
Numeric.included_modules # => [Comparable, Kernel]
Integer.included_modules # => [Precision, Comparable, Kernel]
Fixnum.included_modules # => [Precision, Comparable, Kernel]

Integer(1.4) # convert a floating point number
Integer("256") # convert a string
Integer("0b11110010") # convert a binary number from a string
Integer(0177) # convert an octal number
Integer(0x20) # convert a hexadecimal number
Integer(?z) # convert a character code

Float(167) # convert an integer 
Float("77") # convert a string
Float(?a) # convert a character code

7 + 5 # add
20 - 8 # subtract 
2 * 6 # multiply
144 / 12 # divide
12**2 # exponent
12 % 5 # modulo (remainder of division)
+7 + -5
-20 + 32
-20 - +32
20 * -8 

24.div 2 # division
(25.0).div(2.0) # result is integer
12.modulo 5 # modulo
12.modulo(5.0) # modulo with float => 2.0
12.divmod 5 # return array with quotient, modulus => [2, 2]
12.0.divmod 5.0 # with float => [2, 2.0]
12.quo 5 # return the quotient => 2.4
12.remainder 5 # return the remainder => 2

24 / 2 # no problem => 12
25 / 2 # uh-oh, truncation => 12
25.0 / 2 # using a float as at least one operand solves it => 12.5
25.0 / 2.0 # same when both operands are floats => 12.5
24.div 2 # division method => 12
(25.0).div(2.0) # returns result as integer, truncates => 12

12 == 24/2 # => true
24.eql?(12*2) # => true
12 == 14 # => false
12 <=> 12 # => 0
12 <=> 10 # => 1
12 <=> 14 # => -1

12 < 14 # => true
12 < 12 # => false
12 <= 12 # => true
12.0 > 11.9 # => true
12.0 >= 12 # => true

x = 0
x = x + 1
x += 1
x = 12 # regular assignment => 12
x += 6 # addition => 18
x -= 12 # subtraction => 6
x *= 4 # multiplication => 24
x /= 8 # division => 3
x **= 2 # power (exponentiation) => 9
x %= 3 # modulo => 0
x # return the variable's value => 0

~1011 # bitwise not or complement => -1012
1011 | 1010 # bitwise or => 1011
1011 & 1010 # bitwise and => 1010
1011 ^ 1010 # bitwise exclusive or => 1
1011 << 1 # shift left => 2022
1011 >> 1 # shift right => 505

-40.abs # => 40
40.abs # => 40
4.65.ceil # => 5 
4.65.floor # => 4
100.45.round # => 100
100.49.round # => 100
100.5.round # => 101
100.6.round # => 101

(1..25) === 14 # => true, in range
(1..25) === 26 # => false, out of range
(1...25) === 25 # => false, out of range if ... used
(1..9).to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9]
digits = Range.new(1, 9)
digits.to_a # => [1, 2, 3, 4, 5, 6, 7, 8, 9]

op = 0
op.zero? # => true
op.nonzero? # => false

op = 0
if !op.zero? # not a zero?
  puts 12 / op
else
  puts "Can't divide by zero."
end

op = 2

if op.nonzero? # is it nonzero?
  puts 12 / op
else
  puts "Can't divide by zero."
end

12.integer? # => true
12.0.integer? # => false
-1.integer? # => true
-12.integer? # => true

num = 4 # => 4

if num.integer?
  puts "Invited guests: " + num.to_s
else 
  puts "Only whole persons can come to this party."
end

0.0.finite? # => true
(-1.0/0.0).finite? # => false
(+1.0/0.0).finite? # => false

0.0.infinite? # => nil
(-1.0/0.0).infinite? # => -1
(+1.0/0.0).infinite? # => 1

val = 1.0
val.nan? # => false
val = 0.0/0.0
val.inspect # => "NaN"
val.nan? # => true

-24.next # => -23
1.next # => 2
999.next # => 1000
97.chr # => "a"
98.chr # => "b"
125.chr # => "}"
126.chr # => "~"
127.chr # => "\177"

10.times { |i| print i, " " } # => 0 1 2 3 4 5 6 7 8 9
10.times { |i| print 5*i, " " } # => 0 5 10 15 20 25 30 35 40 45

10.times do |i|
  puts 5*i
end

10.times do |i| print 5*i, " " end

# run separately
=begin
100.downto(1) { |c| print c, " "; sleep 1 }

1.upto(100) { |c| print c, " "; sleep 1 }
=end

print Math::E # => 2.71828182845905
print Math::PI # => 3.14159265358979

Math.exp(1) # => 2.71828182845905
Math.exp(11) # => 59874.1417151978

Math.sqrt(4) # => 2.0
Math.sqrt(16) # => 4.0
Math.sqrt(144) # => 12.0

Math.log(Math::E) # => 1.0
Math.log(1) # => 0.0
Math.log(0) # => -Infinity
Math.log10(100.0) # => 2.0

"In the early morning astronomers spiritualized nonmathematicians".split.each { |p| print p.length, " " }

