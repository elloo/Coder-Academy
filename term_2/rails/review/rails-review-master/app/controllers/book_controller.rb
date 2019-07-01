class BookController < ApplicationController
  def page
    @books = ["harry potter and sorcerer's stone", "prizoner of Azakaban", "Random Book"]
  end
end
