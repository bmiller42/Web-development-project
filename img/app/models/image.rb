class Image < ActiveRecord::Base
    belongs_to :user
    has_many :users, through: :image_users
    has_many :tags
    has_many :image_users

end
