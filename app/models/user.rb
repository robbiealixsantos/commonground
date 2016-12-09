class User < ApplicationRecord
  has_many :rooms
    enum :affiliation [:red, :blue]

  validates_presence_of :username
  validates_presence_of :password
  validates_presence_of :email
  validates_uniqueness_of :email

end
