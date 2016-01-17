class StudentsController < ApplicationController
  before_filter :authenticate_teacher!

  def show
    @student = Student.find(params[:id])
    @reports = @student.reports
  end

  def new
    @teacher = current_teacher
    @class_group = ClassGroup.find(params[:class_group_id])
    @student = Student.new
  end

  def create
    @class_group = ClassGroup.find(params[:class_group_id])
    @teacher = current_teacher
    @student = Student.create(student_params)
    @student.save
    @class_group.students << @student
    redirect_to teacher_class_groups_path(@teacher, @class_group)
  end

  private
  def student_params
    params.require(:student).permit(:first_name, :last_name, :parent_email)
  end
end
