class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, presence: true, inclusion: { in: CATEGORY }

  has_many :reviews, dependent: :destroy
end
