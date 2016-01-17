class ParentsController < ApplicationController
  before_filter :authenticate_parent!

  def show
    @student = Student.new
    @parent = current_parent
    @students = @parent.students
    @possible_students = @parent.possible_students
  end

  def edit
    binding.pry
  end

  def update #need to make this more secure by setting permitted params?
    @student = Student.find(params[:student][:id])
    @parent = Parent.find(params[:id])
    @student.parent = @parent
    @student.save
    redirect_to parent_path(@parent)
  end
end
