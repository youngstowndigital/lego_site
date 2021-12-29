require "test_helper"

class SetsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @set = lego_sets(:volkswagen)
  end

  test "index should return success" do
    get sets_url
    assert_response :success
  end 

  test "show should return success" do
    get set_url(@set)
    assert_response :success
  end
end
