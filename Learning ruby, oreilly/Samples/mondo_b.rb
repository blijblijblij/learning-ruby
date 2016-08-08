#!/usr/bin/env ruby

require 'rubygems'
require_gem 'builder'

address = <<XML
<address>
 <name><given>Mondo</given><family>Mangrove</family></name>
 <street>9876 Trekker St.</street>
 <city>Granola</city>
 <state>Colorado</state>
 <code>81000</code>
 <country>USA</country>
</address>
XML

document = Builder::XmlMarkup.new( :target => address, :indent => 1 )
puts document.to_xs
