class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # If you want to do private beta (where users cannot sign up), remove the 'registerable' symbol
  # If you want to only confirm by clicking on link via email, uncomment 'confirmable' symbol on line 3

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
