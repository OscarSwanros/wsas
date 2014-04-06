class Job < ActiveRecord::Base
  include AASM

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
