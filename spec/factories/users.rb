FactoryGirl.define do
  factory :teacher do
    first_name('Sam')
    last_name('Wise')
    email('sammie@cheese.com')
    password("cheeseME")
  end
end
