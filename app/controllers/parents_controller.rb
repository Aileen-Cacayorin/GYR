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

  def update
    binding.pry

  end
end
