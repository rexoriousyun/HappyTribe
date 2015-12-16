class RenameOpportunitiesToEvents < ActiveRecord::Migration
  def change
  	rename_table :opportunities, :events
  	rename_column :timeslots, :opportunity_id, :event_id
  end
end
