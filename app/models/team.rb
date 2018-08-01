class Team < ApplicationRecord
  has_many :users
  validates :name, presence: true
  validates :users, length: { maximum: 4 }
  # validates :score, numericality: true

  validate :validate_number_of_users

  def validate_number_of_users
    errors.add(:users, "too much") if users.size > 4
  end
end
