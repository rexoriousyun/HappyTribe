class RemoveStartTimeFromOpportunities < ActiveRecord::Migration
  def change
    remove_column :opportunities, :start_time, :datetime
    remove_column :opportunities, :end_time, :datetime
    remove_column :opportunities, :max_capacity, :integer
  end
end
