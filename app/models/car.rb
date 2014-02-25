class Car < ActiveRecord::Base
  validates :model, presence: true
  validates :brand, presence: true
  validates :car_type, presence: true
  validates :color, presence: true
  validates :kms, presence: true
  validates :plates, presence: true
end
