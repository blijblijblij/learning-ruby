#!/usr/bin/env ruby

months = Hash.new
months.empty? # => true
months.length 
months.size # => 0
months = Hash.new( "month" ) 
months = Hash.new "month"
months[0]
months[72] 
months[234] # => "month"

christmas_carol = Hash[ :name, "Ebenezer Scrooge", :partner, "Jacob Marley", :employee, "Bob Cratchit", :location, "London", :year, 1843 ]

months = { 1 => "January", 2 => "February", 3 => "March", 4 => "April", 5 => "May",  6 => "June", 7 => "July", 8 => "August", 9 => "September", 10 => "October", 11 => "November", 12 => "December" }

month_a = { "jan" => "January", "feb" => "February", "mar" => "March", "apr" => "April", "may" => "May",  "jun" => "June", "jul" => "July", "aug" => "August", "sep" => "September", "oct" => "October", "nov" => "November", "dec" => "December" } 

zip = { 82442 => "Ten Sleep", 83025 => "Teton Village", 83127 => "Thayne", 82443 => "Thermopolis", 82084 => "Tie Siding", 82336 => "Tipton", 82240 => "Torrington", 83110 => "Turnerville", 83112 => "Turnerville" }
zip.has_key? 82442 # => true
zip.has_value? "Ten Sleep" # => true
zip[82442] # => "Ten Sleep"
zip.keys # => [83110, 83127, 82336, 83112, 82084, 83025, 82442, 82443, 82240]
zip.values # => ["Turnerville", "Thayne", "Tipton", "Turnerville", "Tie Siding", "Teton Village", "Ten Sleep", "Thermopolis", "Torrington"]
zip.values_at 82084 # => ["Tie Siding"]
zip.values_at 82442, 82443, 82240 # => ["Ten Sleep", "Thermopolis", "Torrington"]
zip.index "Thayne" # => 83127
zip.select { |key,val| key > 83000 } # => [[83110, "Turnerville"], [83127, "Thayne"], [83112, "Turnerville"], [83025, "Teton Village"]] 

zip.each {|k,v| puts "#{k}/#{v}" } # =>
# => 83110/Turnerville
# => 83127/Thayne
# => 82336/Tipton
# => 83112/Turnerville
# => 82084/Tie Siding
# => 83025/Teton Village
# => 82442/Ten Sleep
# => 82443/Thermopolis
# => 82240/Torrington

zip.each_key { |key| print key, " " } # => 83110 83127 82336 83112 82084 83025 82442 82443 82240
zip.each_value { |value| print value, " " } # => Turnerville Thayne Tipton Turnerville Tie Siding Ten Sleep Teton Village Thermopolis Torrington

rhode_island = { 1 => "Bristol", 2 => "Kent", 3 => "Newport", 4 => "Providence", 5 => "Washington" }
rhode_island[6]= "Dunthorpe"
rhode_island[2]= "Bent"
rhode_island.store(6, "Dunthorpe")

delaware = { 1 => "Kent", 2 => "New Castle", 3 => "Sussex" } 

rhode_island = { 1 => "Bristol", 2 => "Kent", 3 => "Newport", 4 => "Providence", 5 => "Washington" }

rhode_island.merge delaware # => {5=>"Washington", 1=>"Kent", 2=>"New Castle", 3=>"Sussex", 4=>"Providence"}

rhode_island.merge( delaware ){|key,old,new| new = old + "_new" } # => {5=>"Washington", 1=>"Bristol_new", 2=>"Kent_new", 3=>"Newport_new", 4=>"Providence"}
rhode_island = { 1 => "Bristol", 2 => "Kent", 3 => "Newport", 4 => "Providence", 5 => "Washington" }
p rhode_island # => {5=>"Washington", 1=>"Bristol", 2=>"Kent", 3=>"Newport", 4=>"Providence"}
rhode_island.sort # => [[1, "Bristol"], [2, "Kent"], [3, "Newport"], [4, "Providence"], [5, "Washington"]]

rhode_island = { 1 => "Bristol", 2 => "Kent", 3 => "Newport", 4 => "Providence", 5 => "Washington" }
rhode_island.delete( 5 ) # => "Washington"
p rhode_island # => {1=>"Bristol", 2=>"Kent", 3=>"Newport", 4=>"Providence"}
rhode_island = { 1 => "Bristol", 2 => "Kent", 3 => "Newport", 4 => "Providence", 5 => "Washington" }
rhode_island.delete_if { |key, value| key < 3 } # => {5=>"Washington", 3=>"Newport", 4=>"Providence"}
rhode_island.delete_if { |key, value| value == "Kent" } # => {5=>"Washington", 1=>"Bristol", 3=>"Newport", 4=>"Providence"}

counties = { "Delaware" => 3, "Rhode Island" => 5 }
counties.clear # bye-bye
counties.empty? # => true

temp = {"Delaware" => 3 }
counties.replace( temp )
counties.replace( { "Delaware" => 3 } )

fitzgerald = { 1920 => "This Side of Paradise", 1925 => "The Great Gatsby", 1934 => "Tender Is the Night" }
fitzgerald.to_a # => [[1925, "The Great Gatsby"], [1920, "This Side of Paradise"], [1934, "Tender Is the Night"]]

novels = fitzgerald.to_s # => "1925The Great Gatsby1920This Side of Paradise1934Tender Is the Night"
novels.gsub(/\d{4}/, " " ) { |token| print token } # => " The Great Gatsby This Side of Paradise Tender Is the Night"

fitz = fitzgerald.to_hash # => {1925=>"The Great Gatsby", 1920=>"This Side of Paradise", 1934=>"Tender Is the Night"}
fitz.object_id # => 1745050
fitzgerald.object_id # => 1745050
