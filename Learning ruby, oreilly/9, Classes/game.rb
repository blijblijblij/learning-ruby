#!/usr/bin/env ruby
load 'dice.rb'
class Game
    include Dice
end
g = Game.new
g.roll
