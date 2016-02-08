FactoryGirl.define do
  factory :parent do
    first_name('Blammo')
    last_name('parent')
    email('blamblam@aol.com')
    password("RosesRblammo")
  end

  factory :matching_parent, class: Parent do
    first_name('Blammo')
    last_name('parent')
    email('blamblam@aol.com')
    password("RosesRblammo")
  end
end
