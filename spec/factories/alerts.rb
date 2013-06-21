# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :alert do
    vehicle_id 1
    component "MyString"
    content "MyText"
    checked false
  end
end
