# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "johndoe#{n}@example.com"}
    password 'secret'
  end
end