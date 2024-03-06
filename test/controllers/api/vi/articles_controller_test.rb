require "test_helper"

class Api::Vi::ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get api_vi_articles_index_url
    assert_response :success
  end

  test "should get show" do
    get api_vi_articles_show_url
    assert_response :success
  end

  test "should get create" do
    get api_vi_articles_create_url
    assert_response :success
  end

  test "should get update" do
    get api_vi_articles_update_url
    assert_response :success
  end

  test "should get destroy" do
    get api_vi_articles_destroy_url
    assert_response :success
  end
end
