class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :car_id
      t.integer :worker_id
      t.datetime :finished_at
      t.text :comments

      t.timestamps
    end
  end
end
