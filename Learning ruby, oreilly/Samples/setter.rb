#!/usr/bin/env ruby

class Name
  def family_name=( family )
    @family_name = family
  end
  def given_name=( given )
    @given_name = given
  end
end

n = Name.new
n.family_name= "Matsumoto" # => "Matsumoto"
n.given_name= "Yukihiro" # => "Yukihiro"
p n #<Name:0x325140 @family_name="Matsumoto", @given_name="Yukihiro">
