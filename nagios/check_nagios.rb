#!/usr/bin/env ruby

require 'nagiosplugin'
require 'optparse'
require 'ostruct'

options = OpenStruct.new
OptionParser.new do |opt|
  opt.on('-f', '--first_name FIRSTNAME', 'The first name') { |o| options.first_name = o }
  opt.on('-l', '--last_name LASTNAME', 'The last name') { |o| options.last_name = o }
end.parse!

# Create your custom plugin as subclass from Nagios::Plugin
class CheckCda < Nagios::Plugin
  @user
  @password = "v2"
  @url = ".sh"

  #setup user, password and url to check
  def setup(user, password, url)
      errorstr = method(:setup).parameters.map{|p| "#{p.last}: #{eval p.last.to_s}" }.join(', ')
      puts errorstr
  end

  # Required method: Is the status critical?
  def critical?
    @number < 3
  end

  # Required method: Is the status warning?
  def warning?
    @number < 5
  end

  # Required method: Is the... I see, you got it.
  def ok?
    @number > 6
  end

  # Optional method that is executed once before determining the status.
  def check
    @number = rand(10)
  end

  # Optional method: The returned stuff will be appended to plugin output.
  def message
    "#{@number} was picked"
    puts errorstr
  end
end

# Call the build-in class method to display the status and exit properly:
CheckCda.run!
