class Student < ActiveRecord::Base
    has_many :courses, through: :enrollments

end
