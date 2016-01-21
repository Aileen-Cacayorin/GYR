require 'rails_helper'

RSpec.describe Parent, type: :model do
  it { should have_many :students }
end

describe 'possible_students: searches for students without a parent that have the correct email' do
  it 'returns zero realtions if no student is found' do
    parent = FactoryGirl.create(:parent)
    expect(parent.possible_students.count).to eq 0
  end

  it 'returns relationships if found' do
    parent = FactoryGirl.create(:parent)
    student = FactoryGirl.create(:student)
  end
end
