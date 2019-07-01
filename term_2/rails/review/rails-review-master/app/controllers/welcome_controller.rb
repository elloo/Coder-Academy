class WelcomeController < ApplicationController
  def page
    # @name = "nandini"
    @name = User.first.name
  end
end
