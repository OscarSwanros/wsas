class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :model
      t.string :brand
      t.string :car_type
      t.string :color
      t.string :kms
      t.string :plates

      t.timestamps
    end
  end
end
