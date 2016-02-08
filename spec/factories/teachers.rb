FactoryGirl.define do
  factory :teacher do
    first_name('Sam')
    last_name('Teacher')
    email('sammie@cheese.com')
    password("cheeseME")
  end
end
