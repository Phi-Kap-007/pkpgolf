class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # If you want to do private beta (where users cannot sign up), remove the 'registerable' symbol
  # If you want to only confirm by clicking on link via email, uncomment 'confirmable' symbol on line 3

  # Uncomment below only if you don't want users to exist without a team.
  belongs_to :team, optional: true
  validates :email, presence: true
  validates :encrypted_password, presence: true
  validates :email, uniqueness: true

    # Problem with validation below: when setting a user as admin in the console,
    # :is_not_fifth_member puts admin outside of their team, causing weird error. Get it checkout out

    # validate :is_not_fifth_member

  with_options if: :admin? do |admin|
    admin.validates :password, length: { maximum: 10 }
    admin.validates :email, presence: true
  end

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def full_name
    self.first_name + " " + self.last_name
  end

  # def is_not_fifth_member
  #   if self.team
  #     errors.add(:team, "team is full") if self.team.users.size > 3
  #   end
  # end
end
