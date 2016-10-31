module Api
  class TeachersController < ApplicationController
    
    def index
      infors = []
      @teachers = Teacher.all
      @teachers.each do |teacher|
        teacher_name = teacher.name
        @courses = teacher.courses
        courses = []
        @courses.each do |course|
          course_name = course.name
          courses << course_name
        end
        info = {"teacher" => teacher_name, "courses" => courses}
        infors << info
      end
      render json: infors
    end

    def destroy
      @teacher = Teacher.find(params[:id])
      @teacher.destroy
    end

  end
end
