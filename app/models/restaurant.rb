class Restaurant < ApplicationRecord
  CATEGORY = %w[ chinese italian japanese french belgian].freeze
  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: Restaurant::CATEGORY }
  has_many :reviews, dependent: :destroy
end
