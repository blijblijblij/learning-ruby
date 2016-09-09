class HelloController < ApplicationController
  def index
    @message="Hello, bloeb v2 .sh!"
    @count=3
    @bonus="This message came from the controller."
    @bloeb="Bloeb v2 .sh\n" * 200 * 200 + "<h2>.bat</h2>"
  end
end
