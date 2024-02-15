require "test_helper"

class FurnitureItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @furniture_item = furniture_items(:one)
  end

  test "should get index" do
    get furniture_items_url
    assert_response :success
  end

  test "should get new" do
    get new_furniture_item_url
    assert_response :success
  end

  test "should create furniture_item" do
    assert_difference("FurnitureItem.count") do
      post furniture_items_url, params: { furniture_item: { material: @furniture_item.material, name: @furniture_item.name } }
    end

    assert_redirected_to furniture_item_url(FurnitureItem.last)
  end

  test "should show furniture_item" do
    get furniture_item_url(@furniture_item)
    assert_response :success
  end

  test "should get edit" do
    get edit_furniture_item_url(@furniture_item)
    assert_response :success
  end

  test "should update furniture_item" do
    patch furniture_item_url(@furniture_item), params: { furniture_item: { material: @furniture_item.material, name: @furniture_item.name } }
    assert_redirected_to furniture_item_url(@furniture_item)
  end

  test "should destroy furniture_item" do
    assert_difference("FurnitureItem.count", -1) do
      delete furniture_item_url(@furniture_item)
    end

    assert_redirected_to furniture_items_url
  end
end
