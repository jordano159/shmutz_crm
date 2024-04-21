require "application_system_test_case"

class KidsTest < ApplicationSystemTestCase
  setup do
    @kid = kids(:one)
  end

  test "visiting the index" do
    visit kids_url
    assert_selector "h1", text: "Kids"
  end

  test "should create kid" do
    visit kids_url
    click_on "New kid"

    fill_in "Grade", with: @kid.grade
    fill_in "Name", with: @kid.name
    fill_in "Notes", with: @kid.notes
    fill_in "Phone", with: @kid.phone
    fill_in "Status", with: @kid.status
    click_on "Create Kid"

    assert_text "Kid was successfully created"
    click_on "Back"
  end

  test "should update Kid" do
    visit kid_url(@kid)
    click_on "Edit this kid", match: :first

    fill_in "Grade", with: @kid.grade
    fill_in "Name", with: @kid.name
    fill_in "Notes", with: @kid.notes
    fill_in "Phone", with: @kid.phone
    fill_in "Status", with: @kid.status
    click_on "Update Kid"

    assert_text "Kid was successfully updated"
    click_on "Back"
  end

  test "should destroy Kid" do
    visit kid_url(@kid)
    click_on "Destroy this kid", match: :first

    assert_text "Kid was successfully destroyed"
  end
end
