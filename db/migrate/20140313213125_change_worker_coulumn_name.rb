class ChangeWorkerCoulumnName < ActiveRecord::Migration
  def change
    rename_column :workers, :worker, :worker_id
  end
end
