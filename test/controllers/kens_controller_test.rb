require "test_helper"

class KensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ken = kens(:one)
  end

  test "should get index" do
    get kens_url
    assert_response :success
  end

  test "should get new" do
    get new_ken_url
    assert_response :success
  end

  test "should create ken" do
    assert_difference("Ken.count") do
      post kens_url, params: { ken: { name: @ken.name } }
    end

    assert_redirected_to ken_url(Ken.last)
  end

  test "should show ken" do
    get ken_url(@ken)
    assert_response :success
  end

  test "should get edit" do
    get edit_ken_url(@ken)
    assert_response :success
  end

  test "should update ken" do
    patch ken_url(@ken), params: { ken: { name: @ken.name } }
    assert_redirected_to ken_url(@ken)
  end

  test "should destroy ken" do
    assert_difference("Ken.count", -1) do
      delete ken_url(@ken)
    end

    assert_redirected_to kens_url
  end
end
