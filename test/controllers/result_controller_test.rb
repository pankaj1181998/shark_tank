require 'test_helper'

class ResultControllerTest < ActionDispatch::IntegrationTest
  test "should get filtere" do
    get result_filtere_url
    assert_response :success
  end

end
