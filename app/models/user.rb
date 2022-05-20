class User < ApplicationRecord

  has_many :credits
  has_many :billings, through: :credits
  has_many :debits
  has_many :billings, through: :debits
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
