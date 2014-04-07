class AddJobIdToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :job_id, :integer
  end
end
