require "rails_helper"

RSpec.describe TeacherMailer, type: :mailer do
  describe "daily_report" do
    teacher = FactoryGirl.create(:teacher)
    class_group = teacher.class_groups.push(FactoryGirl.create(:class_group))
    # The reason I use first in some of the lines below is because pushing only
    # saves the relationship, not the item being pushed in. First grabs the item
    daily_summary = class_group.first.daily_summaries.push(FactoryGirl.create(:daily_summary))
    student = class_group.first.students.push(FactoryGirl.create(:student))
    report = daily_summary.first.reports.push(FactoryGirl.create(:report))

    let(:mail) { TeacherMailer.daily_report(student.first, report.first, teacher) }

    it "renders the headers" do
      expect(mail.subject).to eq("Today's Report")
      expect(mail.to).to eq([student.first.parent_email])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end
end
