#!/usr/bin/env ruby

require 'tk'
require "tkextlib/tkimg/jpeg"
require "open-uri"

photo = open("http://www.wyeast.net/images/sunrise.jpg", "rb") {|io| io.read}

TkRoot.new {title "Sunrise" }

TkLabel.new {
  image TkPhotoImage.new( :data => Tk::BinaryString( photo ) )
  width 300
  pack
}

TkLabel.new {
  font TkFont.new( 'verdana 24 bold' )
  text "Sunrise at sunset!"
  pack
}

TkButton.new { 
  text 'Quit'
  command 'exit'
  pack
}

Tk.mainloop
