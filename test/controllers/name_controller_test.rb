require 'test_helper'

class NameControllerTest < ActionDispatch::IntegrationTest
  test "should get provider" do
    get name_provider_url
    assert_response :success
  end

end
