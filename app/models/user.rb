class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	validates :name,uniqueness: true
  	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable

  	def email_required?
  		false
  	end
  	def email_changed?
  		false
  	end

  	has_many :books, dependent: :destroy
  	attachment :profile_image

  	validates :name, presence: true
  	validates :name, length: {minimum: 2, maximum: 20}
  	validates :introduction, length: {maximum: 50}
end
