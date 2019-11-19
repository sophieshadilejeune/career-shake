require 'test_helper'

class ProflistingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get proflistings_index_url
    assert_response :success
  end

  test "should get new" do
    get proflistings_new_url
    assert_response :success
  end

  test "should get create" do
    get proflistings_create_url
    assert_response :success
  end

end
