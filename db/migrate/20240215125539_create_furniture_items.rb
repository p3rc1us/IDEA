class CreateFurnitureItems < ActiveRecord::Migration[7.1]
  def change
    create_table :furniture_items do |t|
      t.string :name
      t.string :material

      t.timestamps
    end
  end
end
