# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :car do
    model "MyString"
    brand "MyString"
    car_type "MyString"
    color "MyString"
    kms "MyString"
    plates "MyString"
  end
end
