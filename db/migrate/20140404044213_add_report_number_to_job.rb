class AddReportNumberToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :report_number, :string
  end
end
