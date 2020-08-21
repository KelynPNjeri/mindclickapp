class User < ApplicationRecord
  include Gravtastic
  gravtastic
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  validates :email, presence: true, uniqueness: true
  validates :first_name, :last_name, presence: true
end
