class CreateWorks < ActiveRecord::Migration
  def change
    create_table :works do |t|
      t.belongs_to :worker
      t.belongs_to :job
      t.timestamps
    end
  end
end
