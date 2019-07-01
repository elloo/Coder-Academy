class HomeController < ApplicationController
    def page
        render plain: "Hey this is my home page."
    end
end