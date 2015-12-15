class RemoveOpportunityIdFromArrangements < ActiveRecord::Migration
  def change
    remove_column :arrangements, :opportunity_id, :integer
    remove_column :arrangements, :time_slot, :integer
    add_column :arrangements, :timeslot_id, :integer
  end
end
