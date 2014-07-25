require 'test_helper'

class BlogsControllerTest < ActionController::TestCase
  test "should get string:title" do
    get :string:title
    assert_response :success
  end

  test "should get text:content" do
    get :text:content
    assert_response :success
  end

  test "should get date:published" do
    get :date:published
    assert_response :success
  end

end
