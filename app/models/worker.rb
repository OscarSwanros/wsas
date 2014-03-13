class Worker < ActiveRecord::Base
  validates :name, presence: true
  validates :woker_type, presence: true
end
