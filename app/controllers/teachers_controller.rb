class TeachersController < ApplicationController
  def show
    @student = Teacher.find(params[:id])
    @class_groups = @teacher.class_groups
  end

end
