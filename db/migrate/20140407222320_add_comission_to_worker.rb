class AddComissionToWorker < ActiveRecord::Migration
  def change
    add_column :workers, :comission, :float
  end
end
