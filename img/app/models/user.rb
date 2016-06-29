class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true
  has_many :images
  # has_many :images, through: :image_users

  has_many :image_user

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


end
