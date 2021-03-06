class Client < ActiveRecord::Base
  validates :name, presence: true
  validates :address, presence: true
  validates :zip, presence: true
  validates :phone, presence: true
  validates :rfc, presence: true
  validates :email, presence: true

  has_many :cars
end

