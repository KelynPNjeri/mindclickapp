class User < ApplicationRecord
  include Gravtastic
  gravtastic
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :omniauthable, :omniauth_providers => [:google_oauth2]

  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true


  def self.from_omniauth(access_token)
    data = access_token.info
    user = User.where(:email => data["email"]).first
  
    unless user
      password = Devise.friendly_token[0,20]
      user = User.create(first_name: data["name"], email: data["email"],
        password: password, password_confirmation: password
      )
    end
    user
  end
end
