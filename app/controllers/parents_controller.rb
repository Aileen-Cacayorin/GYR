class ParentsController < ApplicationController
  before_filter :authenticate_parent!

  def show
    @parent = current_parent
    @students = @parent.students
    @possible_students = @parent.possible_students
  end

end
