BEGIN { 
puts "BEGIN"
}

1.upto(20) do |i|
  puts i
end

END { 
puts "END"
}
