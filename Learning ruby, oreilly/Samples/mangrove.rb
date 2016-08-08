#!/usr/bin/env ruby

require 'rexml/document'
include REXML

document = Document.new

document << XMLDecl.new( "1.0", "UTF-8" )

document << Comment.new( "our good friend Mondo" )

document.add_element( "name", { "lang" => "en"})

given = document.root.add_element( "given" )
family = document.root.add_element( "family" )

given.add_attribute("nickname", "false")

given.text = "Mondo"
family.text = "Mangrove"

document.write( $stdout, 0 )
