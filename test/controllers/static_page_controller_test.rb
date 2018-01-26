require 'test_helper'

class StaticPageControllerTest < ActionDispatch::IntegrationTest

  test "graphiql path renders graphiql gui" do
    get graphiql_rails_url
    assert_response :success
  end

  test "v1 post endpoint" do
    post v1_url
    assert_response :success
  end

  test "v1 get endpoint" do
    get v1_url
    assert_response :success
  end
end
