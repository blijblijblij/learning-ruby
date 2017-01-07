#!/usr/bin/env ruby

require "lolcat/lol"
require "lolcat/cat"
require 'figlet'

font = Figlet::Font.new('big.flf')
figlet = Figlet::Typesetter.new(font)
s = figlet["HelloWorld"]
buf = StringIO.new(s)
opts = {
  animate: false,
  duration: 12,
  os: rand(256),
  speed: 20,
  spread: 8.0,
  freq: 0.3
}
Lol.cat buf.read.split("\n"), opts
buf.close
