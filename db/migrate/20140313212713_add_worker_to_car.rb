class AddWorkerToworker < ActiveRecord::Migration
  def change
    add_column :workers, :worker, :integer
  end
end
