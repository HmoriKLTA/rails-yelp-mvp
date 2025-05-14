class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  CATEGORY = ["Chinese", "Italian", "Japanese", "French", "Belgian"]

  validates :category, presence: true, inclusion: { in: CATEGORY }

  has_many :reviews, dependent: :destroy
end
