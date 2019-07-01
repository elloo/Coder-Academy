class BookController < ApplicationController
  def page
    @books = 
    ["Harry Potter and the Philosopher's Stone",
    "Harry Potter and the Chamber of Secrets",
    "Good Omens"]
  end
end
