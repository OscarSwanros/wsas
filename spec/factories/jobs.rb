# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    car_id 1
    worker_id 1
    finished_at "2014-03-28 18:21:10"
    comments "MyText"
  end
end
