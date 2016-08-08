#!/usr/bin/env ruby

Dir.chdir( "Ratios" )
home = Dir.pwd
p home 
Dir.chdir( ".." )

ruby_progs = "."

if not Dir.pwd == ruby_progs
  Dir.chdir ruby_progs
end

Dir.mkdir( "sandbox" )
Dir.rmdir( "sandbox" )
Dir.mkdir( "sandbox", 755 )
Dir.rmdir( "sandbox" )

Dir.entries( "." ).each { |e| puts e }

Dir.foreach( "/usr/local/src/ruby-1.8.6" ) { |e| puts e }

dir = Dir.open( "." )
dir.path
dir.tell
dir.read
dir.tell
dir.rewind
dir.each { |e| puts e } # puts each entry in dir
dir.close

file = File.new( "f.rb", "w" )
file.close
File.delete( "f.rb" )

file = File.open( "sonnet_129.txt" )
file.each { |line| print "#{file.lineno}. ", line }
file.close

ARGV << "sonnet_129.txt"
print while gets

p ARGV # => ["sonnet_119.txt"]

ARGV#[0] # => ["sonnet_119.txt"]

File.new( "books.txt", "w" )
File.rename( "books.txt", "chaps.txt" )
File.delete( "chaps.txt" )

File::open("x.txt") if File::exists?( "x.txt" )

File.file?( "sonnet29.txt" ) # => true

File::directory?( "/usr/local/bin" ) # => true

File::directory?( "access.rb" ) # => false
File.readable?( "sonnet_119.txt" ) # => true
File.writable?( "sonnet_119.txt" ) # => true
File.executable?( "sonnet_119.txt" ) # => false

system("touch chap.txt") # Create a zero-length file with a system command
File.zero?( "chap.txt" ) # => true
File.delete( "chap.txt" )

File.size?( "sonnet_129.txt" ) # => 594
File.size( "sonnet_129.txt" ) # => 594

File::ftype( "access.rb" ) # => "file"

File::ctime( "access.rb" )
File::mtime( "access.rb" )
File::atime( "access.rb" )

file = File.new( "books.txt", "w" )
file.chmod( 0755 )
system "ls -l books.txt"
File.delete( "books.txt" )

file = File.new( "books.txt", "w" ).chmod( 0755 )
system "ls -l books.txt"
File.delete( "books.txt" )

file = File.new( "books.txt", "w" ).chmod( 0644 )
system "ls -l books.txt"
File.delete( "books.txt" )

=begin
file = File.new( "books.txt", "r" )
file.chown( 109, 3333 )
system "ls -l books.txt"
File.delete( "books.txt" )

file = File.new( "books.txt", "r" ).chown( 109, 3333 )
system "ls -l books.txt"
File.delete( "books.txt" )
=end

ios = IO.new( 1, "w" )
ios.puts "IO, IO, it's off to the computer lab I go."
$stdout.puts "Do you copy?"
ios.fileno # => 1
ios.to_i # => 1
$stdout.fileno # => 1
ios.close

# for best results, try one instance of IO at a time!
=begin
ios = IO.new( 1, "w" )
ios << "Ask not " << "for whom the bells toll." << " -John Donne"
ios.flush # => Ask not for whom the bells toll. -John Donne
ios.close

ios = IO.new( 1 )
ios.putc "M"
ios.putc "a"
ios.putc "t"
ios.putc "z"
ios.getc # => Matz
ios.close
=end

file = File.new( "sonnet_29.txt" )
file.gets # => "When in disgrace with fortune and men's eyes\n"
file.gets # => "I all alone beweep my outcast state,\n"
file.close

file = File.new( "sonnet_119.txt" )
file.readline # => "Let me not to the marriage of true minds\n"
file.readline # => "Admit impediments. Love is not love\n"
file.readline # => "Which alters when it alteration finds,\n"
file.close
