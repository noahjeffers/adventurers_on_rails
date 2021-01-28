class Item < ApplicationRecord
  belongs_to :adventurer

  validates :name, :price, :description, presence: true
  validates :price, numericality: true
end
