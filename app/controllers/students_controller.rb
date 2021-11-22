class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        grades = Student.all.map do |student|
            student.grade
        end
        render json: grades.sort
    end

    def highest_grade 
        student = Student.order(grade: :desc).first
        render json: student
    end
end
