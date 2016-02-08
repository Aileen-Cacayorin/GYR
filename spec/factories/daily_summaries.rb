FactoryGirl.define do
  factory :daily_summary do
    date(Time.now)
    text('Great education was had this afternoon!')
    homework('Make more education at home with the multiplication table memorization.')
  end
end
