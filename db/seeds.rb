# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

car_models = %w{Pointer Sentra Jetta Tida Vocho Stratus Frontier AudiA8}
car_brands = %w{VW Nissan Chrisler Audi}
car_types = %w{Sedan Hashback Pickup Sports}
car_colors = %w{White Grey Black Green Red Orange}

20.times do
  Car.create!(
    model: "#{car_models.sample}",
    brand: "#{car_brands.sample}",
    car_type: "#{car_types.sample}",
    color: "#{car_colors.sample}",
    kms: "#{Faker::Number.number 4}",
    plates: "#{Faker::Lorem.word}"
  )
end

20.times do
  Client.create!(
    name: "#{Faker::Name.name}",
    address: "#{Faker::Address.street_address}",
    zip: "#{Faker::Address.postcode}",
    phone: "#{Faker::PhoneNumber.phone_number}",
    rfc: "#{Faker::Lorem.word}"
  )
end
