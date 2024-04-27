require "application_system_test_case"

class AddOnsTest < ApplicationSystemTestCase
  setup do
    @add_on = add_ons(:one)
  end

  test "visiting the index" do
    visit add_ons_url
    assert_selector "h1", text: "Add ons"
  end

  test "should create add on" do
    visit add_ons_url
    click_on "New add on"

    fill_in "Category", with: @add_on.category
    fill_in "Name", with: @add_on.name
    fill_in "Price", with: @add_on.price
    fill_in "Servings", with: @add_on.servings
    click_on "Create Add on"

    assert_text "Add on was successfully created"
    click_on "Back"
  end

  test "should update Add on" do
    visit add_on_url(@add_on)
    click_on "Edit this add on", match: :first

    fill_in "Category", with: @add_on.category
    fill_in "Name", with: @add_on.name
    fill_in "Price", with: @add_on.price
    fill_in "Servings", with: @add_on.servings
    click_on "Update Add on"

    assert_text "Add on was successfully updated"
    click_on "Back"
  end

  test "should destroy Add on" do
    visit add_on_url(@add_on)
    click_on "Destroy this add on", match: :first

    assert_text "Add on was successfully destroyed"
  end
end
