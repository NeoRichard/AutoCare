# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :message do
    from 1
    to 1
    content "MyText"
    opened false
  end
end
