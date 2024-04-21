require "test_helper"

class SignUpsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @call = sign_ups(:one)
  end

  test "should get index" do
    get sign_ups_url
    assert_response :success
  end

  test "should get new" do
    get new_call_url
    assert_response :success
  end

  test "should create call" do
    assert_difference("Call.count") do
      post sign_ups_url, params: { call: { campain_id: @call.campain_id, date: @call.date, kid_id: @call.kid_id, notes: @call.notes } }
    end

    assert_redirected_to call_url(Call.last)
  end

  test "should show call" do
    get call_url(@call)
    assert_response :success
  end

  test "should get edit" do
    get edit_call_url(@call)
    assert_response :success
  end

  test "should update call" do
    patch call_url(@call), params: { call: { campain_id: @call.campain_id, date: @call.date, kid_id: @call.kid_id, notes: @call.notes } }
    assert_redirected_to call_url(@call)
  end

  test "should destroy call" do
    assert_difference("Call.count", -1) do
      delete call_url(@call)
    end

    assert_redirected_to sign_ups_url
  end
end
