class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # If you want to do private beta (where users cannot sign up), remove the 'registerable' symbol
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
