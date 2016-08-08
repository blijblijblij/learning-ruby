#!/usr/bin/env ruby

require 'rexml/document'
include REXML

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

document = Document.new( address )
puts document
