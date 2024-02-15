require "application_system_test_case"

class FurnitureItemsTest < ApplicationSystemTestCase
  setup do
    @furniture_item = furniture_items(:one)
  end

  test "visiting the index" do
    visit furniture_items_url
    assert_selector "h1", text: "Furniture items"
  end

  test "should create furniture item" do
    visit furniture_items_url
    click_on "New furniture item"

    fill_in "Material", with: @furniture_item.material
    fill_in "Name", with: @furniture_item.name
    click_on "Create Furniture item"

    assert_text "Furniture item was successfully created"
    click_on "Back"
  end

  test "should update Furniture item" do
    visit furniture_item_url(@furniture_item)
    click_on "Edit this furniture item", match: :first

    fill_in "Material", with: @furniture_item.material
    fill_in "Name", with: @furniture_item.name
    click_on "Update Furniture item"

    assert_text "Furniture item was successfully updated"
    click_on "Back"
  end

  test "should destroy Furniture item" do
    visit furniture_item_url(@furniture_item)
    click_on "Destroy this furniture item", match: :first

    assert_text "Furniture item was successfully destroyed"
  end
end
