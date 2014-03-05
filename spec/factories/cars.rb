# Read about factories at https://github.com/thoughtbot/factory_girl
require 'faker'

car_models = %w{Pointer Sentra Jetta Tida Vocho Stratus Frontier AudiA8}
car_brands = %w{VW Nissan Chrisler Audi}
car_types = %w{Sedan Hashback Pickup Sports}
car_colors = %w{White Grey Black Green Red Orange}

FactoryGirl.define do
  factory :car do
    model { car_models.sample }
    brand { car_brands.sample }
    car_type { car_types.sample }
    color { car_colors.sample }
    kms { Faker::Number.number 4 }
    plates { Faker::Lorem.word }
  end
end
