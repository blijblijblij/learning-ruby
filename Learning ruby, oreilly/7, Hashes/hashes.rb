#!/usr/bin/env ruby

months = Hash.new 'month'

puts 'months.size: ' + months.size.to_s

months = { 1 => 'January', 2 => 'February', 3 => 'March', 4 => 'April', 5 => 'May',
           6 => 'June', 7 => 'July', 8 => 'August', 9 => 'September', 10 => 'October', 11 =>
     'November', 12 => 'December' }

puts 'months.length: ' + months.length.to_s + (months['11']).to_s

zip = { 82_442 => 'Ten Sleep', 83_025 => 'Teton Village', 83_127 => 'Thayne', 82_443 => 'Thermopolis', 82_084 => 'Tie Siding', 82_336 => 'Tipton', 82_240 => 'Torrington', 83_110 => 'Turnerville', 83_112 => 'Turnerville' }
puts 'zip.has_key? 83127: ' + (zip.key? 83_127).to_s
puts 'zip[83025]: ' + (zip[83_025]).to_s
puts 'zip.keys: ' + zip.keys.to_s
puts 'zip.values: ' + zip.values.to_s

puts 'zip.values_at 82084: ' + (zip.values_at 82_084).to_s
puts 'zip.values_at 82442, 82443, 82240: ' + (zip.values_at 82_442, 82_443, 82_240).to_s

# from value to keys
puts 'zip.key "Thayne" (zip.index has been deprecated): ' + (zip.key 'Thayne').to_s

# select a range of keys
puts zip.select { |key, _val| key > 83_000 }

# iterating
zip.each { |k, v| puts "#{k}/#{v}" }
zip.each_key { |key| print key, ' ' }
zip.each_value { |value| print value, ' ' }

# changing values
rhode_island = { 1 => 'Bristol', 2 => 'Kent', 3 => 'Newport', 4 => 'Providence',
                 5 => 'Washington' }
puts "rhode_island: " + (rhode_island).to_s
# add on new value
rhode_island[6]= "Dunthorpe"
puts "rhode_island: " + (rhode_island).to_s
rhode_island[2] = "Bloeb_v2.sh.bat"
puts "rhode_island: " + (rhode_island).to_s

# merging of two hashes will deliver all distinct values, or not...
delaware = { 1 => "Kent", 2 => "New Castle", 3 => "Sussex" }
rhode_island.merge( delaware )
puts "rhode_island_merged?!: " + (rhode_island).to_s

rhode_island.merge( delaware ){|key,old,new| new = old + "_new" }
puts "rhode_island_merged?!: " + (rhode_island).to_s
