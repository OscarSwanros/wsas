# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :client do
    name [Faker::Name.first_name, Faker::Name.last_name].join(" ")
    address Faker::Address.street_address
    zip "MyString"
    phone "MyString"
    rfc "MyString"
  end
end
