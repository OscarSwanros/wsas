class AddWorkerIdToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :worker_id, :integer
  end
end
