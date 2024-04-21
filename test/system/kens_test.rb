require "application_system_test_case"

class KensTest < ApplicationSystemTestCase
  setup do
    @ken = kens(:one)
  end

  test "visiting the index" do
    visit kens_url
    assert_selector "h1", text: "Kens"
  end

  test "should create ken" do
    visit kens_url
    click_on "New ken"

    fill_in "Name", with: @ken.name
    click_on "Create Ken"

    assert_text "Ken was successfully created"
    click_on "Back"
  end

  test "should update Ken" do
    visit ken_url(@ken)
    click_on "Edit this ken", match: :first

    fill_in "Name", with: @ken.name
    click_on "Update Ken"

    assert_text "Ken was successfully updated"
    click_on "Back"
  end

  test "should destroy Ken" do
    visit ken_url(@ken)
    click_on "Destroy this ken", match: :first

    assert_text "Ken was successfully destroyed"
  end
end
