#!/usr/bin/env ruby

class Dog
  attr :bark, true
end

Dog.instance_methods.sort - Object.instance_methods # => [ "bark", "bark=" ]

dog = Dog.new

dog.bark="Woof!"
puts dog.bark # => Woof!
