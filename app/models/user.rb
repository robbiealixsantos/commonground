class User < ApplicationRecord
  has_many :messages
  has_many :chatrooms, through: :messages
  devise :database_authenticatable, :rememberable, :trackable, :authentication_keys => [:email]
end
