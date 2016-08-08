#!/usr/bin/env ruby

class Dog
  attr_reader :bark
  attr_writer :bark
end

dog = Dog.new

dog.bark="Woof!"
puts dog.bark # => Woof!

dog.instance_variables.sort # => ["@bark"]
Dog.instance_methods.sort - Object.instance_methods # => [ "bark", "bark=" ]
