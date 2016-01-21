FactoryGirl.define do
  factory :student do
    first_name('general')
    last_name('education')
    parent_email('aokincaid@gmail.com')
  end

  factory :matching_student, class: Student do
    first_name('blamia')
    last_name('child-parent')
    parent_email('blamblam@aol.com')
  end
end
