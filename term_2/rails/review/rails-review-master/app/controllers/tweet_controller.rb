class TweetController < ApplicationController
  def page
    @user = User.find_by(name: "nands")
    @tweets = @user.tweets
  end
end
