require 'test_helper'

class UrlListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @url_list = url_lists(:one)
  end

  test "should get index" do
    get url_lists_url
    assert_response :success
  end

  test "should get new" do
    get new_url_list_url
    assert_response :success
  end

  test "should create url_list" do
    assert_difference('UrlList.count') do
      post url_lists_url, params: { url_list: { full_url: @url_list.full_url, short_url: @url_list.short_url } }
    end

    assert_redirected_to url_list_url(UrlList.last)
  end

  test "should show url_list" do
    get url_list_url(@url_list)
    assert_response :success
  end

  test "should get edit" do
    get edit_url_list_url(@url_list)
    assert_response :success
  end

  test "should update url_list" do
    patch url_list_url(@url_list), params: { url_list: { full_url: @url_list.full_url, short_url: @url_list.short_url } }
    assert_redirected_to url_list_url(@url_list)
  end

  test "should destroy url_list" do
    assert_difference('UrlList.count', -1) do
      delete url_list_url(@url_list)
    end

    assert_redirected_to url_lists_url
  end
end
