class Row < ApplicationRecord
  belongs_to :garden
  has_many :garden_vegetables, dependent: :destroy
  has_many :vegetables,        through: :garden_vegetables
  has_many :seeds,             through: :garden_vegetables
  has_many :plants,            through: :garden_vegetables
  has_many :harvest,           through: :garden_vegetables
end
