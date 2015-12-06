class TeacherMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.teacher_mailer.daily_report.subject
  #
  def daily_report(student)
    @greeting = "Hi"
    student = student
    mail to: student.parent_email, subject: "Today's Report"
  end
end
