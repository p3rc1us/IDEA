class AddImageUrlToFurnitureItems < ActiveRecord::Migration[7.1]
  def change
    add_column :furniture_items, :image_url, :string
  end
end
