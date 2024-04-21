require "application_system_test_case"

class CampainsTest < ApplicationSystemTestCase
  setup do
    @campain = campains(:one)
  end

  test "visiting the index" do
    visit campains_url
    assert_selector "h1", text: "Campains"
  end

  test "should create campain" do
    visit campains_url
    click_on "New campain"

    fill_in "Ken", with: @campain.ken_id
    fill_in "Name", with: @campain.name
    fill_in "Notes", with: @campain.notes
    fill_in "Script", with: @campain.script
    fill_in "Year", with: @campain.year
    click_on "Create Campain"

    assert_text "Campain was successfully created"
    click_on "Back"
  end

  test "should update Campain" do
    visit campain_url(@campain)
    click_on "Edit this campain", match: :first

    fill_in "Ken", with: @campain.ken_id
    fill_in "Name", with: @campain.name
    fill_in "Notes", with: @campain.notes
    fill_in "Script", with: @campain.script
    fill_in "Year", with: @campain.year
    click_on "Update Campain"

    assert_text "Campain was successfully updated"
    click_on "Back"
  end

  test "should destroy Campain" do
    visit campain_url(@campain)
    click_on "Destroy this campain", match: :first

    assert_text "Campain was successfully destroyed"
  end
end
