require 'test_helper'

class PrivateControllerTest < ActionDispatch::IntegrationTest
  test 'should get test' do
    get private_test_url
    assert_response :success
  end
end
