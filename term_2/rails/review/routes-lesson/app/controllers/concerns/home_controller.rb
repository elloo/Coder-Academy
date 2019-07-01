class HomeController < ApplicationController
    def page
        @names = ["Huss", "Shun", "Dam", "Ewe Lin"]
    end

    def data
        # params is a rails variable that captures info coming from the client side 
        puts "____"
        puts params
        puts "____"
        render plain: "Hey I have posted some data"
    end

    def create
        puts "-------create method---------"
        puts params
        @email = params[:email]
        @password = params[:password]
    end
end