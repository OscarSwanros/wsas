class Worker < ActiveRecord::Base
  has_many :works
  has_many :jobs, through: :works

  validates :name, presence: true
  validates :worker_type, presence: true
end
