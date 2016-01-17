class ParentsController < ApplicationController
  before_filter :authenticate_parent!

  def show
    @parent = current_parent
    @students = @parent.students
  end

end
