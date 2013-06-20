# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vehicle do
    vehicle_type "MyString"
    brand "MyString"
    vehicle_model "MyString"
    year 1
    user_id 1
    km 1
    fuel 1
  end
end
