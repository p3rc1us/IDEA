class AddColumnsToFurnitureItems < ActiveRecord::Migration[7.1]
  def change
    add_column :furniture_items, :description, :string
    add_column :furniture_items, :price, :decimal
  end
end
