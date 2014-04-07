class Expense < ActiveRecord::Base
  validates :description, presence: true
  validates :cost, presence: true
  validates :job_id, presence: true
  validates :job_id, presence: true

  belongs_to :job
  belongs_to :worker

  delegate :report_number,
           :to => :job,
           :prefix => true
  delegate :name,
           :to => :worker,
           :prefix => true
end
