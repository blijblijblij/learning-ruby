# A sample module
module M
  def report
    puts "'report' method in Module M"
  end
end
# a class that is mixing in module M
class C
  include M
  def report
    puts "'report' method in class C"
    puts 'About to trigger the next higher-up report method'
    super
    puts "Back from the 'super' call"
  end
end
# run this
c = C.new
c.report
