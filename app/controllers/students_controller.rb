class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
    @students = Student.all
  end

  def create
    @student = Student.new
    @student.first_name = params[:student][:first_name]
    @student.last_name = params[:student][:last_name]
    @student.save
    render plain: params[:student]
  end
end
