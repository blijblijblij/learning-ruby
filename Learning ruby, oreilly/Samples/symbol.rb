#!/usr/bin/env ruby

name = "Matz"
name.to_sym # => ":Matz"
:Matz.id2name # => "Matz"
name == :Matz.id2name # => true
