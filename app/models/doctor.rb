class Doctor < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        
  validates :email, presence: true
  validates :password, presence: true

  has_many :doctor_categories
  has_many :categories, through: :doctor_categories

  has_many :appointments
end
