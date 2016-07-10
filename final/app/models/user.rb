class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthabl
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  validates :name, presence: true
  validates :wallet, presence: true
  serialize :cart, Array
  serialize :wishlist, Array
  serialize :bought, Array
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
