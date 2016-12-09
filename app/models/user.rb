class User < ApplicationRecord
<<<<<<< HEAD
  has_many :messages
  has_many :chatrooms, through: :messages
  devise :database_authenticatable, :rememberable, :trackable, :authentication_keys => [:email]
end
=======
  has_many :rooms
end
>>>>>>> 62edc22081166292f3097dfdb353f4817ffcc62c
