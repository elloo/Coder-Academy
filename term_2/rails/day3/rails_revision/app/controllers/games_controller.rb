class GamesController < ApplicationController
    # in the games controller execute the page method
    def page
        @games = "mario", "sonic", "pacman"
    end
end