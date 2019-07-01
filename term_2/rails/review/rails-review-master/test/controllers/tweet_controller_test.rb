require 'test_helper'

class TweetControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get tweet_page_url
    assert_response :success
  end

end
