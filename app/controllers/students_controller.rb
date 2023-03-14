class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        students = Student.order(grade: :desc)
        render json: students
    end

    def highest_grade
        grade = Student.maximum("grade")
        student = Student.find_by(grade: grade)
        render json: student
    end
end
