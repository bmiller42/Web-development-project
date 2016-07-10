class Item < ActiveRecord::Base
  validates :name, presence:true
  validates :price, presence:true
  validates :stock, presence:true
  validates :specs, presence:true
  has_many :comments
end
