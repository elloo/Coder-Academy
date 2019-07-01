require 'test_helper'

class BookControllerTest < ActionDispatch::IntegrationTest
  test "should get page" do
    get book_page_url
    assert_response :success
  end

end
