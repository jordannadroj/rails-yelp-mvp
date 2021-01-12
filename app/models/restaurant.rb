class Restaurant < ApplicationRecord
  CATEGORIES = %w(chinese italian japanese french belgian)

  validates :name, :address, :phone_number, :category, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian)}
  has_many :reviews, dependent: :destroy
end
