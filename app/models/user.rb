class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :messages
  has_many :chatrooms, through: :messages

  validates_presence_of :password
  validates_presence_of :email
  validates_uniqueness_of :email
end

