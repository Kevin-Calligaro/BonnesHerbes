class Garden < ApplicationRecord
  belongs_to :user
  has_many :rows, dependent: :destroy
  has_many :garden_vegetables, through: :rows
  validates :title, presence: true, uniqueness: true
end
