class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password, presence:true
  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :username, uniqueness: {case_sensitive: false}, presence: true
end
