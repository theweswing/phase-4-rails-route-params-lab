class StudentsController < ApplicationController
  def index
    students = Student.all
    if params[:name]
      found_students =
        Student.where(
          'first_name= ? OR last_name = ?',
          params[:name],
          params[:name],
        )
      render json: found_students
    else
      render json: students
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end
end
