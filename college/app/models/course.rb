class Course < ActiveRecord::Base
    has_many :students, through: :enrollments
    has_many :enrollments, dependent: :destroy

    def students_not_enrolled
        student_array = Student.all - self.students
        student_array.map {|student| [student.name, student.id]}
    end
end
