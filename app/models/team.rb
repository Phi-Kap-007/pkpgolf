class Team < ApplicationRecord
  has_many :users
  validates :name, presence: true
  validates :users, length: { maximum: 4 }
  validates :score, numericality: true
end
