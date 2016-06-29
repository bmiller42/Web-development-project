class Image < ActiveRecord::Base
    belongs_to :user
    has_many :users, through: :image_users
    has_many :tags
    has_many :image_users

    def is_eligible
        user_array = User.all - self.users - [self.user]
        user_array = user_array.map {|user| [user.name + "("+ user.email + ")", user.id]}
    end
    def current_user_access
        if self.private == false
            return true
        elsif self.user_id == user_id
            return true
        elsif self.image_users.map {|img| img.user_id}
            return true
        end
        return false
    end
end
