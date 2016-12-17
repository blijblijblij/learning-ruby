require 'date'

# blalblalblalbla
class HelloController < ApplicationController
  def index
    @message = 'Hello, bloeb v2 .sh!'
    @count = 5
    @bonus = 'This message came from the controller.'
    @bloeb = "Bloeb v2 .sh\n" * 2 + '<h2>.bat</h2>'
    today = Date.today
    @today = "Today's date is #{today.month}/#{today.day}/#{today.year}."
  end
end
