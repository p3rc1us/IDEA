class FurnitureItem < ApplicationRecord
  validates :name, presence: true
  validates :material, presence: true
  validates :image_url, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
