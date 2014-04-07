class Job < ActiveRecord::Base
  include AASM

  has_many :expenses
  has_many :works
  has_many :workers, through: :works

  def total_cost
    expenses.map(&:cost).sum
  end

  def subtotal
    self.quote - total_cost
  end

  def after_breakdown
    subtotal - subtotal * ((workers.map(&:comission).sum)/100)
  end

  aasm column: :state do
    state :pending, :initial => true
    state :running
    state :paused
    state :finished

    event :start do
      transitions :from => :pending,  :to => :running
    end

    event :pause do
      transitions :from => :running, :to => :paused
    end

    event :restart do
      transitions :from => :paused, :to => :running
    end

    event :finish do
      transitions :from => :running, :to => :finished
    end
  end
end
