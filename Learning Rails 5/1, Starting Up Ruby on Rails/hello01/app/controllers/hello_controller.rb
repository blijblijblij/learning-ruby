class HelloController < ApplicationController
  def index
    @message="Hello, bloeb v2 .sh!"
    @count=3
    @bonus="This message came from the controller."
  end
end
