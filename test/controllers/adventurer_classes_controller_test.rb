require 'test_helper'

class AdventurerClassesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get adventurer_classes_index_url
    assert_response :success
  end

  test "should get show" do
    get adventurer_classes_show_url
    assert_response :success
  end

end
