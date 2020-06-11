class GardenVegetable < ApplicationRecord
  belongs_to :row
  belongs_to :vegetable
end
