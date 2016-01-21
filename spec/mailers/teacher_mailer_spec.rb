require "rails_helper"

RSpec.describe TeacherMailer, type: :mailer do
  describe "daily_report" do
    teacher = FactoryGirl.create(:teacher)
    class_group = teacher.class_groups.push(FactoryGirl.create(:class_group))
    student = class_group.first.students.push(FactoryGirl.create(:student))

    let(:mail) { TeacherMailer.daily_report(teacher, class_group.first, student.first) }

    it "renders the headers" do
      expect(mail.subject).to eq("Daily report")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end
end
