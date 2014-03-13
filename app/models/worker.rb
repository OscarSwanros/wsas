class Worker < ActiveRecord::Base
  validates :name, presence: true
  validates :worker_type, presence: true
end
