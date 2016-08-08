#!/usr/bin/env ruby

require 'erb'

document = %[
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title><%= @name %></title>
</head>
<body>
<h1><%= @name %></h1>

<p><b>Breed:</b> <%= @breed %></p>
<p><b>Sex:</b> <%= @sex %></p>

<h2>Foals</h2>
<ul><% @foals.each do |foals| %>
 <li><%= foals %></li> <% end %>
</ul>

</body>
</html>
]

class Horse 

  def initialize( name, breed, sex )
   @name = name
   @breed = breed 
   @sex = sex
   @foals = [] 
  end

  def foal( name )
    @foals << name 
  end

  def context 
    binding
  end

end

output = ERB.new( document )

horse = Horse.new( "Monarch's Sunrise", "Quarter Horse", "Mare" )
horse.foal( "Dash" )
horse.foal( "Pepper" )

output.run( horse.context )
