#!/usr/bin/env ruby

require 'rubygems'
require_gem 'builder'

favorites = {
  'candy' => 'Neccos', 'novel' => 'Empire of the Sun', 'holiday' => 'Easter'
}

xml = Builder::XmlMarkup.new( :target => $stdout, :indent => 2 )

xml.instruct! :xml, :version => "1.0", :encoding => "US-ASCII"

xml.favorites do 
 favorites.each do | name, choice |
  xml.favorite( choice, :item => name )
 end
end
