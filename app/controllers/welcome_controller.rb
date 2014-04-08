class WelcomeController < ApplicationController
  limit = 5

  expose(:clients) { Client.order(created_at: :desc).limit(limit) }
  expose(:jobs) { Job.order(updated_at: :desc).limit(limit) }
  expose(:quotes) { Job.where("updated_at >= ?", Time.now - 24.hours) }
  expose(:workers) { Worker.order(updated_at: :desc).limit(limit) }
  expose(:expenses) { Expense.where("updated_at >= ?", Time.now - 24.hours) }

  def index
    @total_investment = expenses.map(&:cost).sum
    @total_quotes = quotes.map(&:quote).sum
  end
end
