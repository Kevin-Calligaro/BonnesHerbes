class Garden < ApplicationRecord
  belongs_to :user
  has_many :rows, dependent: :destroy
  has_many :garden_vegetables, through: :rows
end
