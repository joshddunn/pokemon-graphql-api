require 'test_helper'

class StaticPageControllerTest < ActionDispatch::IntegrationTest

  test "root path renders home template" do
    get root_url
    assert_response :success
  end

  test "graphiql path renders graphiql gui" do
    get graphiql_rails_url
    assert_response :success
  end
end
