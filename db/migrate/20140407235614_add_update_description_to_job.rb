class AddUpdateDescriptionToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :update_description, :string
  end
end
