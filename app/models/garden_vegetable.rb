class GardenVegetable < ApplicationRecord
  belongs_to :row
  belongs_to :vegetable
  has_many :seeds, dependent: :destroy
  has_many :plants, dependent: :destroy
  has_many :harvest, dependent: :destroy
end
