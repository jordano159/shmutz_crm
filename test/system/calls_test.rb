require "application_system_test_case"

class SignUpsTest < ApplicationSystemTestCase
  setup do
    @call = sign_ups(:one)
  end

  test "visiting the index" do
    visit sign_ups_url
    assert_selector "h1", text: "SignUps"
  end

  test "should create call" do
    visit sign_ups_url
    click_on "New call"

    fill_in "Campain", with: @call.campain_id
    fill_in "Date", with: @call.date
    fill_in "Kid", with: @call.kid_id
    fill_in "Notes", with: @call.notes
    click_on "Create Call"

    assert_text "Call was successfully created"
    click_on "Back"
  end

  test "should update Call" do
    visit call_url(@call)
    click_on "Edit this call", match: :first

    fill_in "Campain", with: @call.campain_id
    fill_in "Date", with: @call.date
    fill_in "Kid", with: @call.kid_id
    fill_in "Notes", with: @call.notes
    click_on "Update Call"

    assert_text "Call was successfully updated"
    click_on "Back"
  end

  test "should destroy Call" do
    visit call_url(@call)
    click_on "Destroy this call", match: :first

    assert_text "Call was successfully destroyed"
  end
end
