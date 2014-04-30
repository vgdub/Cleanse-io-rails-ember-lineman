FactoryGirl.define do
  factory :cleanse do
    user
    duration 21
    start_date DateTime.now.to_date
  end
end
