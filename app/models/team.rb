class Team < ApplicationRecord
  validates :name, presence: true
  has_many :brothers
end
