class WelcomeController < ApplicationController
  def page
    # @name = "Nandini"
    @name = User.first.name
  end
end
