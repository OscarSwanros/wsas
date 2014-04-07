class AddQuoteToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :quote, :float
  end
end
